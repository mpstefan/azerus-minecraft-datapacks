function shadowlands:summon/effect
summon minecraft:wither_skeleton ~ ~ ~ {Tags:["shadowlands_new_summon"],CustomName:{"text":"Ebon Reaper"},"Team": "ShadowTemple",PersistenceRequired:1b,Health:70.0f,attributes:[{id:"minecraft:max_health",base:70.0},{id:"minecraft:follow_range",base:500.0},{id:"minecraft:attack_damage",base:8.0},{id:"minecraft:movement_speed",base:0.3375}],active_effects:[{id:"minecraft:fire_resistance",show_particles:0b,amplifier:0,duration:2147483647}],drop_chances:{mainhand:0.01f,offhand:0.0f,head:0.01f,chest:0.01f,legs:0.01f,feet:0.01f}}
execute as @e[tag=shadowlands_new_summon,sort=nearest,limit=1] run function shadowlands:equipment/vorpal_blade
execute as @e[tag=shadowlands_new_summon,sort=nearest,limit=1] run function shadowlands:equipment/vorpal_blade_offhand
execute as @e[tag=shadowlands_new_summon,sort=nearest,limit=1] run function shadowlands:equipment/doomplate_sabatons
execute as @e[tag=shadowlands_new_summon,sort=nearest,limit=1] run function shadowlands:equipment/doomplate_greaves
execute as @e[tag=shadowlands_new_summon,sort=nearest,limit=1] run function shadowlands:equipment/doomplate_chestguard
execute as @e[tag=shadowlands_new_summon,sort=nearest,limit=1] run function shadowlands:equipment/doomplate_helm
tag @e[tag=shadowlands_new_summon] remove shadowlands_new_summon