function shadowlands:summon/effect

summon minecraft:pillager ~ ~ ~ {CustomName:{"text":"Ebon Crossbowman"},PersistenceRequired:1b,Health:100.0f,Team:"ShadowTemple",attributes:[{id:"minecraft:max_health",base:100.0},{id:"minecraft:follow_range",base:500.0},{id:"minecraft:movement_speed",base:0.2}],drop_chances:{mainhand:0.01f,offhand:0.0f}}

execute as @e[type=minecraft:pillager,name="Ebon Crossbowman",sort=nearest,limit=1] run function shadowlands:equipment/ebon_repeater
execute as @e[type=minecraft:pillager,name="Ebon Crossbowman",sort=nearest,limit=1] run function shadowlands:equipment/ebon_shield