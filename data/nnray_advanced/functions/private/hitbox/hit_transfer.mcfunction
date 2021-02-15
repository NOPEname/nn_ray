##by NOPEname

scoreboard players operation uuid_0 nnray_hitbox = @s nnray_hitbox
tag @e[tag=nnray_hitbox] remove nnray_hitbox_select
execute as @e[tag=nnray_hitbox] if score @s nnray_hitbox = uuid_0 nnray_hitbox run tag @s add nnray_hitbox_select

scoreboard players operation uuid_0 nnray_hitbox = @s nnray_hitbox_1
execute as @e[tag=nnray_hitbox_select] unless score @s nnray_hitbox_1 = uuid_0 nnray_hitbox run tag @s remove nnray_hitbox_select
scoreboard players operation uuid_0 nnray_hitbox = @s nnray_hitbox_2
execute as @e[tag=nnray_hitbox_select] unless score @s nnray_hitbox_2 = uuid_0 nnray_hitbox run tag @s remove nnray_hitbox_select
scoreboard players operation uuid_0 nnray_hitbox = @s nnray_hitbox_3
execute as @e[tag=nnray_hitbox_select] unless score @s nnray_hitbox_3 = uuid_0 nnray_hitbox run tag @s remove nnray_hitbox_select

tag @e[tag=nnray_hitbox_select] add nnray_hit
execute as @s[tag=nnray_head] run tag @e[tag=nnray_hitbox_select] add nnray_head
tag @s remove nnray_hit
tag @s remove nnray_head


scoreboard players operation @e[tag=nnray_hitbox_select] nnray_distance = @s nnray_distance
