##by NOPEname

tag @s add nnray_hit
scoreboard players operation @s nnray_distance = __distance nnray_distance
execute positioned ~-0.5 ~-2.1 ~-0.5 as @s[dx=0,dy=0,dz=0,tag=nnray_target,tag=!nnray_source] run tag @s add nnray_head
