##by NOPEname

# get position of possible targets
scoreboard players reset * x
scoreboard players reset * y
scoreboard players reset * z
scoreboard players reset * dx
scoreboard players reset * dy
scoreboard players reset * dz
execute as @e[tag=nnray_target] store result score @s x run data get entity @s Pos[0] 100
execute as @e[tag=nnray_target] store result score @s y run data get entity @s Pos[1] 100
execute as @e[tag=nnray_target] store result score @s z run data get entity @s Pos[2] 100
scoreboard players add @e[tag=nnray_target] y 100

# one ray entity (bullet)
tag @e remove nnray_ray
summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:[nnray_ray]}
