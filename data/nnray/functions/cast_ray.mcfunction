##by NOPEname

# scoreboard
scoreboard objectives add nnray_distance dummy
scoreboard players set __range nnray_distance 1500
scoreboard players set __distance nnray_distance 0

# reset tags
tag @e remove nnray_source
tag @e remove nnray_hit
tag @e remove nnray_head

# shoot
tag @s add nnray_source
execute at @s positioned ~ ~1.62 ~ run function nnray:private/loop
