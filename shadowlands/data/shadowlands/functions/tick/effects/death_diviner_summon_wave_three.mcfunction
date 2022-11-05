#Wave One UUID: 4762d507-06e7-4895-902f-101cc37a0591

summon armor_stand 4397.50 12.00 1449.00 { "Invisible": 1b, "Marker": 1b, "NoGravity": 1b, "Invulnerable": 1b, "Team": "ShadowTemple", "UUID": [I;1197659399,115820693,-1875963876,-1015413359] }
scoreboard players set pillar_wave_three_counter STDeathDiviner 0
scoreboard players set pillar_wave_three_mod STDeathDiviner 0
scoreboard players set wave_three_mod STDeathDiviner 1
execute positioned 4397.50 12.00 1449.00 run playsound minecraft:entity.illusioner.prepare_blindness hostile @a[distance=..20] ~ ~ ~
particle minecraft:flash 4397.50 13.00 1449.00 0 0 0 .01 2 force