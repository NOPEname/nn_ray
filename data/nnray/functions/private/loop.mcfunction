##by NOPEname

# check for air at current position
tag @s remove nnray_in_air
execute at @s if block ~ ~ ~ #nntag:penetrable run tag @s add nnray_in_air

# check for possible entity collision
execute as @s[tag=nnray_in_air] at @s positioned ~-0.5 ~-0.25 ~-0.5 if entity @e[dx=0,dy=0,dz=0,tag=nnray_target] at @s run function nnray:private/entity_collision
### TODO: use tag instead of second condition checking -> performance test
execute as @s[tag=nnray_in_air] at @s positioned ~-0.5 ~-0.25 ~-0.5 unless entity @e[dx=0,dy=0,dz=0,tag=nnray_target] at @s run function nnray:private/no_entity_collision

# still in range?
execute if score @s nnray_distance < @s nnray_range if entity @s[tag=nnray_in_air] at @s anchored feet run function nnray:private/loop
