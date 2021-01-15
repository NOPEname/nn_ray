##by NOPEname

tag @a add nnray_target
tag @a add nnray_hitbox
tag @e[type=villager] add nnray_target
tag @e[type=villager] add nnray_hitbox

function nnray_advanced:cast_ray

execute as @e[tag=nnray_hit] run say @e[tag=nnray_source]
execute as @e[tag=nnray_head] run title @a title "x"
