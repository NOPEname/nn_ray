##by NOPEname

execute positioned ~-0.5 ~-0.25 ~-0.5 as @e[dx=0,dy=0,dz=0,tag=nnray_target,tag=!nnray_shooter,tag=!nnray_hit] run function nnray:private/hit
scoreboard players add __distance nnray_distance 1

# still in range?
execute if score __distance nnray_distance < __range nnray_distance positioned ^ ^ ^1 if block ~ ~ ~ #nntag:penetrable run function nnray:private/loop
