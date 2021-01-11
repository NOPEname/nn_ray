##by NOPEname

# scoreboard
scoreboard objectives add nnray_distance dummy
scoreboard players set __range nnray_distance 1500
scoreboard players set __distance nnray_distance 0

# reset tags
tag @e remove nnray_shooter
tag @e remove nnray_hit

# shoot
tag @s add nnray_shooter
execute at @s anchored eyes run function nnray:private/loop
