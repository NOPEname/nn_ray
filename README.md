# Ray Casting Datapack by NOPEname

-Free to use for your own projects!

-Modify it in whatever way you want!



## nn_ray

-Simple ray casting

-Advantage: low performance impact

-Disadvantage: might be inaccurate, when dealing with moving entities

### -How to use:

  -> add tag "nnray_target" to all entities you want to be potential targets
  
  -> run "function nnray:cast_ray" as the source entity
    ("execute as [...] run function nnray:cast_ray")
    
  -> entities hit by this ray are now marked with tag "nnray_hit"
  
  -> tag "nnray_head" indicates that the entity's head was hit
    (only makes sense for player-like shaped entities)
    
  -> see "nnray/functions/example.mcfunction" for an example



## nn_ray_advanced

-Simple ray casting + improved hitbox detection

-Advantage: Better at targeting moving entities

-Disadvantage: bigger performance impact
  (mostly by "nnray_advanced:prepare_tick")
  
### -How to use:

  -> add tag "nnray_hitbox" to all entities you want to be potential targets
  
  -> run "function nnray_advanced:cast_ray" as the source entity
    ("execute as [...] run function nnray_advanced:cast_ray")
    
  -> entities hit by this ray are now marked with tag "nnray_hit"
  
  -> tag "nnray_head" indicates that the entity's head was hit
    (only makes sense for player-like shaped entities)
    
  -> see "nnray_advanced/functions/example.mcfunction" for an example
