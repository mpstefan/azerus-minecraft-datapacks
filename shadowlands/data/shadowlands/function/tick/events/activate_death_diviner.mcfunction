#Summon Boss
execute positioned 4404.00 13 1449.00 run function shadowlands:summon/death_diviner

#Summon Effect
particle minecraft:soul_fire_flame 4404.00 13 1449.00 1 1 1 .5 1000 force
particle minecraft:large_smoke 4404.00 13 1449.00 1 1 1 .5 1000 force

#Summon Adds
execute positioned 4398.50 12.00 1444.50 run execute rotated 90 0 run function shadowlands:summon/shadow_priest
execute positioned 4398.50 12.00 1453.50 run execute rotated 90 0 run function shadowlands:summon/shadow_priest

#Set Phases/stages
scoreboard players set boss_stage STDeathDiviner 1
scoreboard players set boss_phase STDeathDiviner 0
scoreboard players set burn_zone_one STDeathDiviner 0
scoreboard players set burn_zone_two STDeathDiviner 0
scoreboard players set burn_zone_three STDeathDiviner 0
scoreboard players set burn_zone_four STDeathDiviner 0
scoreboard players set burn_zone_timer STDeathDiviner 999
scoreboard players set burning_soul_timer STDeathDiviner 0
scoreboard players set pillar_wave_one_counter STDeathDiviner 999
scoreboard players set pillar_wave_two_counter STDeathDiviner 999
scoreboard players set pillar_wave_three_counter STDeathDiviner 999
scoreboard players set pillar_wave_four_counter STDeathDiviner 999
scoreboard players set pillar_summon_counter STDeathDiviner 0
scoreboard players set suppression_counter STDeathDiviner 0

#Bossbar Setup
bossbar remove deathdiviner
bossbar add deathdiviner {"text":"Death Diviner","color":"dark_purple"}
bossbar set deathdiviner color purple
bossbar set deathdiviner style notched_6
execute store result bossbar deathdiviner max run attribute 3abf43c2-3abc-7cd9-f2c6-763517b653f6 minecraft:max_health base get