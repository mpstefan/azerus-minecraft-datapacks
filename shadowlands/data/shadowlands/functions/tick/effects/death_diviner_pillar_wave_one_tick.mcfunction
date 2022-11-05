#Create Pillars
execute positioned as 4268d156-24e4-491b-abd2-3e901cd62402 run function shadowlands:tick/effects/death_diviner_flame_pillar
execute positioned as 4268d156-24e4-491b-abd2-3e901cd62402 positioned ~0.75 ~ ~1.75 run function shadowlands:tick/effects/death_diviner_flame_pillar
execute positioned as 4268d156-24e4-491b-abd2-3e901cd62402 positioned ~1.5 ~ ~3.5 run function shadowlands:tick/effects/death_diviner_flame_pillar
execute positioned as 4268d156-24e4-491b-abd2-3e901cd62402 positioned ~0.75 ~ ~-1.75 run function shadowlands:tick/effects/death_diviner_flame_pillar
execute positioned as 4268d156-24e4-491b-abd2-3e901cd62402 positioned ~1.5 ~ ~-3.5 run function shadowlands:tick/effects/death_diviner_flame_pillar




#execute positioned as 4268d156-24e4-491b-abd2-3e901cd62402 run summon minecraft:evoker_fangs ~0.75 ~ ~1.75 {"Warmup":-10}
#execute positioned as 4268d156-24e4-491b-abd2-3e901cd62402 run summon minecraft:evoker_fangs ~1.5 ~ ~3.5 {"Warmup":-10}
#execute positioned as 4268d156-24e4-491b-abd2-3e901cd62402 run summon minecraft:evoker_fangs ~ ~ ~6.00
#execute positioned as 4268d156-24e4-491b-abd2-3e901cd62402 run summon minecraft:evoker_fangs ~ ~ ~7.75
#execute positioned as 4268d156-24e4-491b-abd2-3e901cd62402 run summon minecraft:evoker_fangs ~ ~ ~9.50
#execute positioned as 4268d156-24e4-491b-abd2-3e901cd62402 run summon minecraft:evoker_fangs ~0.75 ~ ~-1.75 {"Warmup":-10}
#execute positioned as 4268d156-24e4-491b-abd2-3e901cd62402 run summon minecraft:evoker_fangs ~1.5 ~ ~-3.5 {"Warmup":-10}
#execute positioned as 4268d156-24e4-491b-abd2-3e901cd62402 run summon minecraft:evoker_fangs ~ ~ ~-4.25
#execute positioned as 4268d156-24e4-491b-abd2-3e901cd62402 run summon minecraft:evoker_fangs ~ ~ ~-6.00
#execute positioned as 4268d156-24e4-491b-abd2-3e901cd62402 run summon minecraft:evoker_fangs ~ ~ ~-7.75
#execute positioned as 4268d156-24e4-491b-abd2-3e901cd62402 run summon minecraft:evoker_fangs ~ ~ ~-9.50

#Update position and check for end
execute positioned as 4268d156-24e4-491b-abd2-3e901cd62402 run tp 4268d156-24e4-491b-abd2-3e901cd62402 ~-1.5 ~ ~
execute store result score pillar_wave_one_pos STDeathDiviner run data get entity 4268d156-24e4-491b-abd2-3e901cd62402 Pos[0]
execute if score pillar_wave_one_pos STDeathDiviner matches ..4335 run kill 4268d156-24e4-491b-abd2-3e901cd62402
