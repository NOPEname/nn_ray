##by NOPEname

tag @s remove nnray_skipped
execute at @s if block ^ ^ ^1 #nntag:penetrable if block ^ ^ ^1 #nntag:penetrable if block ^ ^ ^1 #nntag:penetrable if block ^ ^ ^1 #nntag:penetrable if block ^ ^ ^1 #nntag:penetrable if block ^ ^ ^1 #nntag:penetrable positioned ^ ^ ^-3 unless entity @e[type=!area_effect_cloud,tag=!nnray_ray,tag=!nnray_shooter,tag=!nnray_hit,tag=nnray_target,distance=..4] at @s run function nnray:private/skip
execute if entity @s[tag=!nnray_skipped] run function nnray:private/no_skip
