function shadowlands:tick/effects/grand_evoker_summon

summon minecraft:husk ~ ~ ~ {Tags:["shadowlands_new_summon"],CustomName:{"text":"Risen Soldier"},Team:"Shadow Temple",PersistenceRequired:0b,Health:20f,attributes:[{id:"minecraft:max_health",base:20.0},{id:"minecraft:movement_speed",base:0.2},{id:"minecraft:follow_range",base:500.0}], drop_chances:{mainhand:0.001f}}

execute as @e[tag=shadowlands_new_summon, sort=nearest, limit=1] run function shadowlands:equipment/whirlwind_axe

tag @e[tag=shadowlands_new_summon] remove shadowlands_new_summon