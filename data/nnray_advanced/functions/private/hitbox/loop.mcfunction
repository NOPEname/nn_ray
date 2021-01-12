##by NOPEname

kill @e[type=armor_stand,tag=nnray_hitbox_tmp]
execute as @e[tag=nnray_hitbox] at @s run function nnray_advanced:private/hitbox/loop_entity
