#Wave Two UUID: 3f595284-01d9-4695-ae12-e3d8bb123b1b

summon armor_stand 4397.50 12.00 1449.00 { "Invisible": 1b, "Marker": 1b, "NoGravity": 1b, "Invulnerable": 1b, "Team": "ShadowTemple", "UUID": [I;1062818436,31016597,-1374493736,-1156433125] }
scoreboard players set pillar_wave_two_counter STDeathDiviner 0
scoreboard players set pillar_wave_two_mod STDeathDiviner 0
scoreboard players set wave_two_mod STDeathDiviner 2
execute positioned 4397.50 12.00 1449.00 run playsound minecraft:entity.illusioner.prepare_blindness hostile @a[distance=..20] ~ ~ ~
particle minecraft:flash 4397.50 13.00 1449.00 0 0 0 .01 2 force