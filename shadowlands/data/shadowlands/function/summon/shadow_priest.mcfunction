function shadowlands:summon/effect

summon minecraft:evoker ~ ~ ~ {Tags:["shadowlands_new_summon"],Rotation:[90.0f,0.0f],CustomName:{"text":"Ebon Conjurer"},PersistenceRequired:1b,Team:"ShadowTemple",Health:70.0f,Attributes:[{id:"minecraft:max_health",base:70.0},{id:"minecraft:follow_range",base:500.0}],active_effects:[{id:"minecraft:fire_resistance",show_particles:0b,amplifier:0,duration:2147483647},{id:"minecraft:regeneration",show_particles:0b,duration:2147483647}],drop_chances:{mainhand:0.0f,offhand:0.0f,head:0.01f,chest:0.01f,legs:0.01f,feet:0.01f}}

execute as @e[tag=shadowlands_new_summon,sort=nearest,limit=1] run function shadowlands:equipment/doomplate_sabatons
execute as @e[tag=shadowlands_new_summon,sort=nearest,limit=1] run function shadowlands:equipment/doomplate_greaves
execute as @e[tag=shadowlands_new_summon,sort=nearest,limit=1] run function shadowlands:equipment/doomplate_chestguard
execute as @e[tag=shadowlands_new_summon,sort=nearest,limit=1] run function shadowlands:equipment/doomplate_helm

tag @e[tag=shadowlands_new_summon] remove shadowlands_new_summon