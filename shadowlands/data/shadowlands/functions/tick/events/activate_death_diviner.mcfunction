#Summon Boss
summon minecraft:illusioner 4404.00 13 1449.00 { "id": "illusioner", "CustomName": "\"Death Diviner\"", "Team": "ShadowTemple", "PersistenceRequired": 1, "Health": 1500.0f, "Rotation": [90f,0f], "Attributes": [ { "Name": "generic.max_health", "Base": 1500.0f }, { "Name": "generic.follow_range", "Base": 500.0f }, { "Name": "generic.movement_speed", "Base": 0.2f }, { "Name": "generic.knockback_resistance", "Base": 1.0f } ], "HandItems": [ { "Count": 1, "id": "bow", "tag": { "Unbreakable": 1, "display": { "Name":'[ { "text": "Fate", "italic": false, "color": "dark_purple" } ]' }, "Enchantments": [ { "id": "infinity", "lvl": 1 }, { "id": "power", "lvl": 20 } ] } }, { "id": "tipped_arrow", "Count": 99, "tag": { "Potion": "minecraft:water", "CustomPotionEffects": [ { "Id": 15, "Duration": 600 } ], "display": { "Name": "\"Arrow of Fate\"" } } } ], "ActiveEffects": [ { "Id": 10, "ShowParticles": 0b, "Amplifier": 0, "Duration": 2147483647 }, { "Id": 12, "ShowParticles": 0b, "Duration": 2147483647 } ], "UUID": [I; 985613250, 985431257, -221874635, 397825014 ], "HandDropChances": [ 0.0f, 0.0f ] }

#Summon Effect
particle minecraft:soul_fire_flame 4404.00 13 1449.00 1 1 1 .5 1000 force
particle minecraft:large_smoke 4404.00 13 1449.00 1 1 1 .5 1000 force

#Summon Adds
execute positioned 4398.50 12.00 1444.50 run execute rotated 90 0 run function shadowlands:summon/shadow_priest
execute positioned 4398.50 12.00 1453.50 run execute rotated 90 0 run function shadowlands:summon/shadow_priest

#Set Phases/stages
scoreboard players set boss_stage STDeathDiviner 1
scoreboard players set boss_phase STDeathDiviner 0
scoreboard players set burn_zone_one STDeathDiviner 0
scoreboard players set burn_zone_two STDeathDiviner 0
scoreboard players set burn_zone_three STDeathDiviner 0
scoreboard players set burn_zone_four STDeathDiviner 0
scoreboard players set burn_zone_timer STDeathDiviner 999
scoreboard players set burning_soul_timer STDeathDiviner 0
scoreboard players set pillar_wave_one_counter STDeathDiviner 999
scoreboard players set pillar_wave_two_counter STDeathDiviner 999
scoreboard players set pillar_wave_three_counter STDeathDiviner 999
scoreboard players set pillar_wave_four_counter STDeathDiviner 999
scoreboard players set pillar_summon_counter STDeathDiviner 0
scoreboard players set suppression_counter STDeathDiviner 0

#Bossbar Setup
bossbar remove deathdiviner
bossbar add deathdiviner {"text":"Death Diviner","color":"dark_purple"}
bossbar set deathdiviner color purple
bossbar set deathdiviner style notched_6
execute store result bossbar deathdiviner max run data get entity 3abf43c2-3abc-7cd9-f2c6-763517b653f6 Attributes[{"Name":"minecraft:generic.max_health"}].Base