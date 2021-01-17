##by NOPEname

# nntag datapack check
execute store success score __tmp nnray_distance run function nntag:is_installed
execute if score __tmp nnray_distance matches 0 run tellraw @a {"text":"[nnray]: Error - missing datapack 'nn_block_tag'!","color":"red"}



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
