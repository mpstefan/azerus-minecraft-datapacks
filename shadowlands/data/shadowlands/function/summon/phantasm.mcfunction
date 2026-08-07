execute positioned ~ ~4 ~ run function shadowlands:summon/effect

summon minecraft:stray ~ ~4 ~ {Tags:["shadowlands_new_summon"],CustomName:{"text":"Phantasm"},PersistenceRequired:1b,Team:"Shadow Temple",Health:110.0f,NoGravity:1b,attributes:[{id:"minecraft:max_health",base:110.0},{id:"minecraft:follow_range",base:500.0},{id:"minecraft:knockback_resistance",base:999.0}],active_effects:[{id:"minecraft:fire_resistance",show_particles:0b,amplifier:1,duration:2147483647}],drop_chances:{mainhand:0.01f,offhand:0.0f,head:0.01f,chest:0.01f,legs:0.01f,feet:0.01f}}

execute as @e[tag=shadowlands_new_summon,sort=nearest,limit=1] run function shadowlands:equipment/ebon_flame_bow
execute as @e[tag=shadowlands_new_summon,sort=nearest,limit=1] run function shadowlands:equipment/phantasm_arrow

tag @e[tag=shadowlands_new_summon] remove shadowlands_new_summon