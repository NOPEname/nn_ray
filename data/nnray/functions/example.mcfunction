##by NOPEname

# mark potential targets
# (all other entities will be ignored)
tag @a add nnray_target
tag @e[type=villager] add nnray_target



# cast a ray
# (you can cast as many rays as you wish in one game tick)
function nnray:cast_ray




# deal with "result"
execute as @e[tag=nnray_hit] run say @e[tag=nnray_source]
execute as @e[tag=nnray_head] run title @a title "x"
