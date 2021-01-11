##by NOPEname

# reset tags
tag @e remove nnray_scan
tag @e remove nnray_shooter
tag @e remove nnray_hit
tag @e remove nnray_head

# prepare ray
tp @e[type=area_effect_cloud,tag=nnray_ray] @s
tp @e[type=area_effect_cloud,tag=nnray_ray] ~ ~1.62 ~
scoreboard players set @e[type=area_effect_cloud,tag=nnray_ray] nnray_range 1000
scoreboard players set @e[type=area_effect_cloud,tag=nnray_ray] nnray_distance 0

# shoot
execute as @e[type=area_effect_cloud,tag=nnray_ray] at @s run function nnray:private/loop
