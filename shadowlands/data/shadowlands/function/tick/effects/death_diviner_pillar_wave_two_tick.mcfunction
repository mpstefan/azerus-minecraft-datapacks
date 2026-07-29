#Create Pillars

execute positioned as 3f595284-01d9-4695-ae12-e3d8bb123b1b positioned ~3.00 ~ ~2.50 run function shadowlands:tick/effects/death_diviner_flame_pillar
execute positioned as 3f595284-01d9-4695-ae12-e3d8bb123b1b positioned ~2.25 ~ ~4.25 run function shadowlands:tick/effects/death_diviner_flame_pillar
execute positioned as 3f595284-01d9-4695-ae12-e3d8bb123b1b positioned ~1.50 ~ ~6.00 run function shadowlands:tick/effects/death_diviner_flame_pillar
execute positioned as 3f595284-01d9-4695-ae12-e3d8bb123b1b positioned ~0.75 ~ ~7.75 run function shadowlands:tick/effects/death_diviner_flame_pillar
execute positioned as 3f595284-01d9-4695-ae12-e3d8bb123b1b positioned ~ ~ ~9.50 run function shadowlands:tick/effects/death_diviner_flame_pillar

execute positioned as 3f595284-01d9-4695-ae12-e3d8bb123b1b positioned ~3.00 ~ ~-2.50 run function shadowlands:tick/effects/death_diviner_flame_pillar
execute positioned as 3f595284-01d9-4695-ae12-e3d8bb123b1b positioned ~2.25 ~ ~-4.25 run function shadowlands:tick/effects/death_diviner_flame_pillar
execute positioned as 3f595284-01d9-4695-ae12-e3d8bb123b1b positioned ~1.50 ~ ~-6.00 run function shadowlands:tick/effects/death_diviner_flame_pillar
execute positioned as 3f595284-01d9-4695-ae12-e3d8bb123b1b positioned ~0.75 ~ ~-7.75 run function shadowlands:tick/effects/death_diviner_flame_pillar
execute positioned as 3f595284-01d9-4695-ae12-e3d8bb123b1b positioned ~ ~ ~-9.50 run function shadowlands:tick/effects/death_diviner_flame_pillar


#Update position and check for end
execute positioned as 3f595284-01d9-4695-ae12-e3d8bb123b1b run tp 3f595284-01d9-4695-ae12-e3d8bb123b1b ~-1.50 ~ ~
execute store result score pillar_wave_two_pos STDeathDiviner run data get entity 3f595284-01d9-4695-ae12-e3d8bb123b1b Pos[0]
execute if score pillar_wave_two_pos STDeathDiviner matches ..4335 run kill 3f595284-01d9-4695-ae12-e3d8bb123b1b
