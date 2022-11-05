#ID of Grand Evoker based on UUID is currently 7849a723-eef3-4a42-ae81-d3d19211029a
summon spider 4510 30 1377 { "id": "spider", "CustomName": "\"Void Widow\"", "Team": "ShadowTemple", "Health": 300d, "Attributes": [ { "Name": "generic.max_health", "Base": 300.0d }, { "Name": "generic.movement_speed", "Base": 0.3375f }, { "Name": "generic.follow_range", "Base": 500.0f } ], "ActiveEffects": [ { "Id": 10, "ShowParticles": 0b, "Amplifier": 0, "Duration": 2147483647 } ], "PersistenceRequired": 1, "Passengers": [ { "id": "pillager", "CustomName": "\"Spider Lord\"", "PersistenceRequired": 1, "Health": 400.0f, "Team": "ShadowTemple", "Attributes": [ { "Name": "generic.max_health", "Base": 400.0f }, { "Name": "generic.follow_range", "Base": 500.0f }, { "Name": "generic.movement_speed", "Base": 0.27f } ], "ActiveEffects": [ { "Id": 10, "ShowParticles": 0b, "Amplifier": 0, "Duration": 2147483647 } ], "HandItems": [ { "Count": 1, "id": "crossbow", "tag": { "display": { "Name": "{\"text\":\"Ebon Repeater\",\"color\":\"dark_purple\"}" }, "Unbreakable": 1, "Enchantments": [ { "id": "quick_charge", "lvl": 4 } ] } }, {} ], "HandDropChances": [ 0.30f, 0.0f ], "UUID": [I; 2018092835, -286045630, -1367223343, -1844378982 ] } ] }
execute positioned 4510.5 40.5 1377 run function shadowlands:summon/abyss_spider

scoreboard players set boss_stage STSpiderLord 1
scoreboard players set summon_at_50 STSpiderLord 1

#Bossbar Setup
bossbar remove spiderlord
bossbar add spiderlord {"text":"Spider Lord","color":"dark_purple"}
bossbar set spiderlord color purple
bossbar set spiderlord style notched_6
execute store result bossbar spiderlord max run data get entity 7849a723-eef3-4a42-ae81-d3d19211029a Attributes[{"Name":"minecraft:generic.max_health"}].Base