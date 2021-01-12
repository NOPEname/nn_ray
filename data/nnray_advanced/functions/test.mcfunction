##by NOPEname

tag @a add nnray_target
tag @e[type=villager] add nnray_target

function nnray_advanced:cast_ray

execute as @e[tag=nnray_hit] run title @a title "hit"
