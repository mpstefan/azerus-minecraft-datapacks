function shadowlands:summon/void_widow

summon minecraft:pillager ~ ~ ~ {Tags:["shadowlands_new_summon"],CustomName:{"text":"Lord of Spiders"},Team:"Shadow Temple",Health:400f,attributes:[{id:"minecraft:max_health",base:400.0},{id:"minecraft:follow_range",base:500.0},{id:"minecraft:movement_speed",base:0.27}],active_effects:[{id:"minecraft:regeneration",amplifier:0,duration:2147483647,show_particles:false}],PersistenceRequired:true, UUID:[I;2018092835,-286045630,-1367223343,-1844378982]}

execute as @e[tag=shadowlands_new_summon, sort=nearest, limit=1] run function shadowlands:equipment/ebon_repeater
execute as @e[tag=shadowlands_new_summon, sort=nearest, limit=1] run ride @s mount @e[tag=shadowlands_void_widow, sort=nearest, limit=1]

tag @e[tag=shadowlands_new_summon] remove shadowlands_new_summon
tag @e[tag=shadowlands_void_widow] remove shadowlands_void_widow