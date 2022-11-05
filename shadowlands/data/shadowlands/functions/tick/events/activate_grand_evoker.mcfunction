#ID of Grand Evoker based on UUID is currently 420abbc7-7bfd-423c-8b70-aae655f74c38
summon evoker 4501.00 32.00 1449.00 { "id": "evoker", "CustomName": "\"Grand Evoker\"", "Team": "ShadowTemple", "PersistenceRequired": 1, "Health": 1000.0f, "OnGround": 0b, "NoGravity": 1b, "Attributes": [ { "Name": "generic.max_health", "Base": 1000.0f }, { "Name": "generic.follow_range", "Base": 50.0f }, { "Name": "generic.movement_speed", "Base": 0f }, { "Name": "generic.knockback_resistance", "Base": 1.0f } ], "ActiveEffects": [ { "Id": 10, "ShowParticles": 0b, "Amplifier": 0, "Duration": 2147483647 } ], "UUID": [I; 1107999687, 2080195132, -1955550490, 1442270264 ] }

#Rotate
tp 420abbc7-7bfd-423c-8b70-aae655f74c38 4501.00 32.00 1449.00 facing 4517.50 30.00 1449.00
scoreboard players set boss_stage STGrandEvoker 1

#Bossbar Setup
bossbar remove grandevoker
bossbar add grandevoker {"text":"Grand Evoker","color":"dark_purple"}
bossbar set grandevoker color purple
bossbar set minecraft:grandevoker style notched_6
execute store result bossbar grandevoker max run data get entity 420abbc7-7bfd-423c-8b70-aae655f74c38 Attributes[{"Name":"minecraft:generic.max_health"}].Base