function shadowlands:tick/effects/grand_evoker_summon

summon minecraft:skeleton ~ ~ ~ {Tags:["shadowlands_new_summon"],CustomName:{"text":"Burning Skeleton"},Team:"Shadow Temple",PersistenceRequired:0b,Fire:9999,attributes:[{id:"minecraft:follow_range",base:500.0}],active_effects:[{id:"minecraft:regeneration",show_particles:false,amplifier:0,duration:2147483647}], drop_chances:{mainhand:0.001f}}

execute as @e[tag=shadowlands_new_summon, sort=nearest, limit=1] run function shadowlands:equipment/ashen_sword

tag @e[tag=shadowlands_new_summon] remove shadowlands_new_summon