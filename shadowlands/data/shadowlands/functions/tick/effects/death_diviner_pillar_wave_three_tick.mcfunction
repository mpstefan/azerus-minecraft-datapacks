#Create Pillars

execute positioned as 4762d507-06e7-4895-902f-101cc37a0591 positioned ~ ~ ~0.75 run function shadowlands:tick/effects/death_diviner_flame_pillar
execute positioned as 4762d507-06e7-4895-902f-101cc37a0591 positioned ~ ~ ~4.25 run function shadowlands:tick/effects/death_diviner_flame_pillar
execute positioned as 4762d507-06e7-4895-902f-101cc37a0591 positioned ~ ~ ~7.75 run function shadowlands:tick/effects/death_diviner_flame_pillar
execute positioned as 4762d507-06e7-4895-902f-101cc37a0591 positioned ~ ~ ~9.50 run function shadowlands:tick/effects/death_diviner_flame_pillar

execute positioned as 4762d507-06e7-4895-902f-101cc37a0591 positioned ~ ~ ~-0.75 run function shadowlands:tick/effects/death_diviner_flame_pillar
execute positioned as 4762d507-06e7-4895-902f-101cc37a0591 positioned ~ ~ ~-4.25 run function shadowlands:tick/effects/death_diviner_flame_pillar
execute positioned as 4762d507-06e7-4895-902f-101cc37a0591 positioned ~ ~ ~-7.75 run function shadowlands:tick/effects/death_diviner_flame_pillar
execute positioned as 4762d507-06e7-4895-902f-101cc37a0591 positioned ~ ~ ~-9.50 run function shadowlands:tick/effects/death_diviner_flame_pillar

#Update position and check for end
execute positioned as 4762d507-06e7-4895-902f-101cc37a0591 run tp 4762d507-06e7-4895-902f-101cc37a0591 ~-1.50 ~ ~
execute store result score pillar_wave_three_pos STDeathDiviner run data get entity 4762d507-06e7-4895-902f-101cc37a0591 Pos[0]
execute if score pillar_wave_three_pos STDeathDiviner matches ..4339 run kill 4762d507-06e7-4895-902f-101cc37a0591
