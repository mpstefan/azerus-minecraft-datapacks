#Create Pillars
execute positioned as 12091e3c-072c-0eb8-ff63-a9d43a518738 positioned ~ ~ ~0.75 run function shadowlands:tick/effects/death_diviner_flame_pillar_low
execute positioned as 12091e3c-072c-0eb8-ff63-a9d43a518738 positioned ~ ~ ~2.50 run function shadowlands:tick/effects/death_diviner_flame_pillar_low
execute positioned as 12091e3c-072c-0eb8-ff63-a9d43a518738 positioned ~ ~ ~4.25 run function shadowlands:tick/effects/death_diviner_flame_pillar_low
execute positioned as 12091e3c-072c-0eb8-ff63-a9d43a518738 positioned ~ ~ ~6.00 run function shadowlands:tick/effects/death_diviner_flame_pillar_low
execute positioned as 12091e3c-072c-0eb8-ff63-a9d43a518738 positioned ~ ~ ~7.75 run function shadowlands:tick/effects/death_diviner_flame_pillar_low
execute positioned as 12091e3c-072c-0eb8-ff63-a9d43a518738 positioned ~ ~ ~9.50 run function shadowlands:tick/effects/death_diviner_flame_pillar_low

execute positioned as 12091e3c-072c-0eb8-ff63-a9d43a518738 positioned ~ ~ ~-0.75 run function shadowlands:tick/effects/death_diviner_flame_pillar_low
execute positioned as 12091e3c-072c-0eb8-ff63-a9d43a518738 positioned ~ ~ ~-2.50 run function shadowlands:tick/effects/death_diviner_flame_pillar_low
execute positioned as 12091e3c-072c-0eb8-ff63-a9d43a518738 positioned ~ ~ ~-4.25 run function shadowlands:tick/effects/death_diviner_flame_pillar_low
execute positioned as 12091e3c-072c-0eb8-ff63-a9d43a518738 positioned ~ ~ ~-6.00 run function shadowlands:tick/effects/death_diviner_flame_pillar_low
execute positioned as 12091e3c-072c-0eb8-ff63-a9d43a518738 positioned ~ ~ ~-7.75 run function shadowlands:tick/effects/death_diviner_flame_pillar_low
execute positioned as 12091e3c-072c-0eb8-ff63-a9d43a518738 positioned ~ ~ ~-9.50 run function shadowlands:tick/effects/death_diviner_flame_pillar_low

#execute positioned as 12091e3c-072c-0eb8-ff63-a9d43a518738 run summon minecraft:evoker_fangs ~ ~ ~0.75
#execute positioned as 12091e3c-072c-0eb8-ff63-a9d43a518738 run summon minecraft:evoker_fangs ~ ~ ~2.50
#execute positioned as 12091e3c-072c-0eb8-ff63-a9d43a518738 run summon minecraft:evoker_fangs ~ ~ ~4.25
#execute positioned as 12091e3c-072c-0eb8-ff63-a9d43a518738 run summon minecraft:evoker_fangs ~ ~ ~6.00
#execute positioned as 12091e3c-072c-0eb8-ff63-a9d43a518738 run summon minecraft:evoker_fangs ~ ~ ~7.75
#execute positioned as 12091e3c-072c-0eb8-ff63-a9d43a518738 run summon minecraft:evoker_fangs ~ ~ ~9.50
#execute positioned as 12091e3c-072c-0eb8-ff63-a9d43a518738 run summon minecraft:evoker_fangs ~ ~ ~-0.75
#execute positioned as 12091e3c-072c-0eb8-ff63-a9d43a518738 run summon minecraft:evoker_fangs ~ ~ ~-2.50
#execute positioned as 12091e3c-072c-0eb8-ff63-a9d43a518738 run summon minecraft:evoker_fangs ~ ~ ~-4.25
#execute positioned as 12091e3c-072c-0eb8-ff63-a9d43a518738 run summon minecraft:evoker_fangs ~ ~ ~-6.00
#execute positioned as 12091e3c-072c-0eb8-ff63-a9d43a518738 run summon minecraft:evoker_fangs ~ ~ ~-7.75
#execute positioned as 12091e3c-072c-0eb8-ff63-a9d43a518738 run summon minecraft:evoker_fangs ~ ~ ~-9.50

#Update position and check for end
execute positioned as 12091e3c-072c-0eb8-ff63-a9d43a518738 run tp 12091e3c-072c-0eb8-ff63-a9d43a518738 ~-1.50 ~ ~
execute store result score pillar_wave_four_pos STDeathDiviner run data get entity 12091e3c-072c-0eb8-ff63-a9d43a518738 Pos[0]
execute if score pillar_wave_four_pos STDeathDiviner matches ..4339 run kill 12091e3c-072c-0eb8-ff63-a9d43a518738
