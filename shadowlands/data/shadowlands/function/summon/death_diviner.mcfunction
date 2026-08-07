summon minecraft:illusioner ~ ~ ~ {Tags:["shadowlands_new_summon"],CustomName:{"text":"Death Diviner"},Team:"Shadow Temple",PersistenceRequired:1b,Health:1500f,Rotation:[90f,0f],attributes:[{id:"minecraft:max_health",base:1500.0},{id:"minecraft:follow_range",base:500.0},{id:"minecraft:movement_speed",base:0.2},{id:"minecraft:knockback_resistance",base:1.0}],active_effects:[{id:"minecraft:regeneration",show_particles:false,amplifier:0,duration:2147483647},{id:"minecraft:fire_resistance",show_particles:false,duration:2147483647}], drop_chances:{mainhand:0.0f,offhand:0.0f}, UUID:[I; 985613250, 985431257, -221874635, 397825014 ]}

# 3abf43c2-3abc-7cd9-f2c6-763517b653f6

execute as @e[tag=shadowlands_new_summon, sort=nearest, limit=1] run function shadowlands:equipment/fate
execute as @e[tag=shadowlands_new_summon, sort=nearest, limit=1] run function shadowlands:equipment/arrow_of_fate

tag @e[tag=shadowlands_new_summon] remove shadowlands_new_summon