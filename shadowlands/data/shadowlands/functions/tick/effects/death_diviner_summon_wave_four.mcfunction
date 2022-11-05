#Wave Four UUID: 12091e3c-072c-0eb8-ff63-a9d43a518738

summon armor_stand 4397.50 12.00 1449.00 { "Invisible": 1b, "Marker": 1b, "NoGravity": 1b, "Invulnerable": 1b, "Team": "ShadowTemple", "UUID": [I; 302587452, 120327864, -10245676, 978421560 ] }
scoreboard players set pillar_wave_four_counter STDeathDiviner 0
scoreboard players set pillar_wave_four_mod STDeathDiviner 0
scoreboard players set wave_four_mod STDeathDiviner 2
execute positioned 4397.50 12.00 1449.00 run playsound minecraft:entity.illusioner.prepare_blindness hostile @a[distance=..20] ~ ~ ~