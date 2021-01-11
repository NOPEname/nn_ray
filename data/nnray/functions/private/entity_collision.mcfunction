##by NOPEname

execute as @s at @s positioned ~-0.5 ~-0.25 ~-0.5 run tag @e[dx=0,dy=0,dz=0,tag=nnray_target] add nnray_scan

execute as @s store result score @s x run data get entity @s Pos[0] 100
execute as @s store result score @s y run data get entity @s Pos[1] 100
execute as @s store result score @s z run data get entity @s Pos[2] 100
execute as @e[tag=nnray_scan] run scoreboard players operation @s dx = @s x
execute as @e[tag=nnray_scan] run scoreboard players operation @s dy = @s y
execute as @e[tag=nnray_scan] run scoreboard players operation @s dz = @s z
scoreboard players operation @e[tag=nnray_scan] dx -= @e[tag=nnray_ray] x
scoreboard players operation @e[tag=nnray_scan] dy -= @e[tag=nnray_ray] y
scoreboard players operation @e[tag=nnray_scan] dz -= @e[tag=nnray_ray] z

### TODO: variable hitbox size!
tag @e[tag=nnray_scan,scores={dx=-32..32,dy=-95..95,dz=-32..32}] add nnray_hit
tag @e[tag=nnray_scan,tag=nnray_hit,scores={dx=-32..32,dy=-95..-40,dz=-32..32}] add nnray_head
scoreboard players operation @e[tag=nnray_scan,tag=nnray_hit] nnray_distance = @s nnray_distance

# ray
tp @s ^ ^ ^0.2
###scoreboard players remove @s[scores={wallTimer=1..}] wallTimer 2
scoreboard players add @s nnray_distance 2

# reset tags
tag @e remove nnray_scan
