function shadowlands:summon/effect
function shadowlands:summon/ebon_warhorse

summon minecraft:zombie ~ ~ ~ {Tags:["shadowlands_new_summon"],CustomName:{"text":"Reanimated Knight"},PersistenceRequired:1b,Health:50.0f,Team:"Shadow Temple", attributes:[{id:"minecraft:max_health",base:50.0},{id:"minecraft:movement_speed",base:0.25},{id:"minecraft:follow_range",base:500.0}],active_effects:[{id:"minecraft:fire_resistance",show_particles:0b,amplifier:0,duration:2147483647}],drop_chances:{mainhand:0.01f,offhand:0.0f,head:0.01f,chest:0.01f,legs:0.01f,feet:0.01f}}

execute as @e[tag=shadowlands_new_summon,sort=nearest,limit=1] run function shadowlands:equipment/killing_edge
execute as @e[tag=shadowlands_new_summon,sort=nearest,limit=1] run function shadowlands:equipment/ebon_shield
execute as @e[tag=shadowlands_new_summon,sort=nearest,limit=1] run function shadowlands:equipment/doomplate_sabatons
execute as @e[tag=shadowlands_new_summon,sort=nearest,limit=1] run function shadowlands:equipment/doomplate_greaves
execute as @e[tag=shadowlands_new_summon,sort=nearest,limit=1] run function shadowlands:equipment/doomplate_chestguard
execute as @e[tag=shadowlands_new_summon,sort=nearest,limit=1] run function shadowlands:equipment/doomplate_helm
execute as @e[tag=shadowlands_new_summon,sort=nearest,limit=1] run ride @s mount @e[tag=shadowlands_ebon_warhorse,sort=nearest,limit=1]

tag @e[tag=shadowlands_new_summon] remove shadowlands_new_summon
tag @e[tag=shadowlands_ebon_warhorse] remove shadowlands_ebon_warhorse