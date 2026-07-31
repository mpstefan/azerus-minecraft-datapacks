function shadowlands:summon/effect
summon minecraft:skeleton ~ ~ ~ {Tags:["shadowlands_new_summon"],CustomName:{"text":"Ebon Marksman"},Team:"ShadowTemple",PersistenceRequired:1b,Attributes:[{id:"minecraft:movement_speed",base:0.0},{id:"minecraft:follow_range",base:500.0},{id:"minecraft:knockback_resistance",base:1.0}],drop_chances:{mainhand:0.0f,offhand:0.0f}}
execute as @e[tag=shadowlands_new_summon,sort=nearest,limit=1] run function shadowlands:equipment/knockback_bow
tag @e[tag=shadowlands_new_summon] remove shadowlands_new_summon