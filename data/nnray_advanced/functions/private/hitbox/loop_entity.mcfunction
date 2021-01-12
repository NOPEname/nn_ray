##by NOPEname

# store coordinates
scoreboard players operation @s nnray_hitbox_x5 = @s nnray_hitbox_x4
scoreboard players operation @s nnray_hitbox_x4 = @s nnray_hitbox_x3
scoreboard players operation @s nnray_hitbox_x3 = @s nnray_hitbox_x2
scoreboard players operation @s nnray_hitbox_x2 = @s nnray_hitbox_x1
scoreboard players operation @s nnray_hitbox_x1 = @s nnray_hitbox_x0
execute store result score @s nnray_hitbox_x0 run data get entity @s Pos[0] 100

scoreboard players operation @s nnray_hitbox_y5 = @s nnray_hitbox_y4
scoreboard players operation @s nnray_hitbox_y4 = @s nnray_hitbox_y3
scoreboard players operation @s nnray_hitbox_y3 = @s nnray_hitbox_y2
scoreboard players operation @s nnray_hitbox_y2 = @s nnray_hitbox_y1
scoreboard players operation @s nnray_hitbox_y1 = @s nnray_hitbox_y0
execute store result score @s nnray_hitbox_y0 run data get entity @s Pos[1] 100
scoreboard players add @s nnray_hitbox_y0 1000

scoreboard players operation @s nnray_hitbox_z5 = @s nnray_hitbox_z4
scoreboard players operation @s nnray_hitbox_z4 = @s nnray_hitbox_z3
scoreboard players operation @s nnray_hitbox_z3 = @s nnray_hitbox_z2
scoreboard players operation @s nnray_hitbox_z2 = @s nnray_hitbox_z1
scoreboard players operation @s nnray_hitbox_z1 = @s nnray_hitbox_z0
execute store result score @s nnray_hitbox_z0 run data get entity @s Pos[2] 100



# teleport hitbox armor_stand to "old" position
summon armor_stand ~ ~10 ~ {Tags:[nnray_hitbox_tmp,nnray_target,summon],NoGravity:1b,Invulnerable:1b,Invisible:1b}
execute store result score @e[type=armor_stand,tag=nnray_hitbox_tmp,tag=summon,limit=1] nnray_hitbox run data get entity @s UUID[0]
execute store result score @e[type=armor_stand,tag=nnray_hitbox_tmp,tag=summon,limit=1] nnray_hitbox_1 run data get entity @s UUID[1]
execute store result score @e[type=armor_stand,tag=nnray_hitbox_tmp,tag=summon,limit=1] nnray_hitbox_2 run data get entity @s UUID[2]
execute store result score @e[type=armor_stand,tag=nnray_hitbox_tmp,tag=summon,limit=1] nnray_hitbox_3 run data get entity @s UUID[3]

execute store result entity @e[type=armor_stand,tag=nnray_hitbox_tmp,tag=summon,limit=1] Pos[0] double 0.01 run scoreboard players get @s nnray_hitbox_x5
execute store result entity @e[type=armor_stand,tag=nnray_hitbox_tmp,tag=summon,limit=1] Pos[1] double 0.01 run scoreboard players get @s nnray_hitbox_y5
execute store result entity @e[type=armor_stand,tag=nnray_hitbox_tmp,tag=summon,limit=1] Pos[2] double 0.01 run scoreboard players get @s nnray_hitbox_z5

tag @e[type=armor_stand,tag=nnray_hitbox_tmp] remove summon

schedule function nnray_advanced:kill_armor_stands 1t
