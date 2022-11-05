#Wave Two UUID: 4268d156-24e4-491b-abd2-3e901cd62402

summon armor_stand 4397.50 12.00 1449.00 { "Invisible": 1b, "Marker": 1b, "NoGravity": 1b, "Invulnerable": 1b, "Team": "ShadowTemple", "UUID": [I;1114165590,618940699,-1412284784,483795970] }
scoreboard players set pillar_wave_one_counter STDeathDiviner 0
scoreboard players set pillar_wave_one_mod STDeathDiviner 0
scoreboard players set wave_one_mod STDeathDiviner 2
execute positioned 4397.50 12.00 1449.00 run playsound minecraft:entity.illusioner.prepare_blindness hostile @a[distance=..20] ~ ~ ~
particle minecraft:flash 4397.50 13.00 1449.00 0 0 0 .01 2 force