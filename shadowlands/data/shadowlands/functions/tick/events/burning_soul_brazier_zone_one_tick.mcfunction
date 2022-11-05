particle minecraft:soul_fire_flame 4385.50 19.50 1458.50 .5 .4 .5 .001 2 force
particle minecraft:soul_fire_flame 4385.50 19.50 1439.50 .5 .4 .5 .001 2 force

execute if score burning_soul_timer STDeathDiviner matches 0 run execute positioned 4385.50 21 1458.50 run function shadowlands:summon/burning_soul
execute if score burning_soul_timer STDeathDiviner matches 0 run execute positioned 4385.50 21 1439.50 run function shadowlands:summon/burning_soul