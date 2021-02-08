##by NOPEname

# nntag datapack check
execute store success score __tmp nnray_distance run function nntag:is_installed
execute if score __tmp nnray_distance matches 0 run tellraw @a {"text":"[nnray_advanced]: Error - missing datapack 'nn_block_tag'!","color":"red"}



# scoreboard
scoreboard players set __range nnray_distance 1500
scoreboard players set __distance nnray_distance 0



# reset tags
tag @e remove nnray_source
tag @e remove nnray_hit
tag @e remove nnray_head



# get hitbox by UUID[0]
execute store result score uuid_0 nnray_hitbox run data get entity @s UUID[0]
tag @e[type=armor_stand] remove nnray_hitbox_select
execute as @e[type=armor_stand,tag=nnray_hitbox_tmp] if score @s nnray_hitbox = uuid_0 nnray_hitbox run tag @s add nnray_hitbox_select

execute store result score uuid_0 nnray_hitbox run data get entity @s UUID[1]
execute as @e[type=armor_stand,tag=nnray_hitbox_select] unless score @s nnray_hitbox_1 = uuid_0 nnray_hitbox run tag @s remove nnray_hitbox_select
execute store result score uuid_0 nnray_hitbox run data get entity @s UUID[2]
execute as @e[type=armor_stand,tag=nnray_hitbox_select] unless score @s nnray_hitbox_2 = uuid_0 nnray_hitbox run tag @s remove nnray_hitbox_select
execute store result score uuid_0 nnray_hitbox run data get entity @s UUID[3]
execute as @e[type=armor_stand,tag=nnray_hitbox_select] unless score @s nnray_hitbox_3 = uuid_0 nnray_hitbox run tag @s remove nnray_hitbox_select



# shoot
tag @s add nnray_source
execute at @s positioned ~ ~1.62 ~ run function nnray_advanced:private/loop



# transfer hit tag
execute as @e[tag=nnray_hit] run function nnray_advanced:private/hitbox/hit_transfer
