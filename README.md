# License
MIT license (https://choosealicense.com/licenses/mit/)

Short summary:
1) Do whatevery you want with my code
2) Condition: Preserve the copyright notice containing my name ("NOPEname") attached to my code in your project (can be found inside the "LICENSE" file)
3) Warranty: absolutely zero! My code doesn't do what you want it to do or even breaks something? Sorry, but... no warranty!



# Ray Casting Datapack by NOPEname

-Free to use for your own projects!

-Modify it in whatever way you want!

-Requires: https://github.com/NOPEname/nn_block_tags


## nn_ray

-Simple ray casting

-Advantage: low performance impact

-Disadvantage: might be inaccurate, when dealing with moving entities

### -How to use:

  -> add tag "nnray_target" to all entities you want to be potential targets
  
  -> run "function nnray:cast_ray" as the source entity
    ("execute as [...] run function nnray:cast_ray")
    
  -> entities hit by this ray are now marked with tag "nnray_hit"
  
  -> the entity running the function is tagged with "nnray_source"
  
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
  
  -> the entity running the function is tagged with "nnray_source"
  
  -> tag "nnray_head" indicates that the entity's head was hit
    (only makes sense for player-like shaped entities)
    
  -> see "nnray_advanced/functions/example.mcfunction" for an example
