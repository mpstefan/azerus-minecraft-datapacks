#Update Bossbar
execute store result bossbar deathdiviner value run data get entity 3abf43c2-3abc-7cd9-f2c6-763517b653f6 Health

#Boss Entity Tracking
execute store result score boss_health STDeathDiviner run data get entity 3abf43c2-3abc-7cd9-f2c6-763517b653f6 Health
execute store result score boss_death_time STDeathDiviner run data get entity 3abf43c2-3abc-7cd9-f2c6-763517b653f6 DeathTime

#Phase Change
execute unless score boss_phase STDeathDiviner matches 0 run execute if score boss_health STDeathDiviner matches 1100.. run function shadowlands:tick/events/death_diviner_enter_phase_zero
execute unless score boss_phase STDeathDiviner matches 1 run execute if score boss_health STDeathDiviner matches 600..1000 run execute if score boss_phase STDeathDiviner matches 0 run function shadowlands:tick/events/death_diviner_enter_phase_one
execute unless score boss_phase STDeathDiviner matches 1 run execute if score boss_health STDeathDiviner matches 600..1000 run scoreboard players set boss_phase STDeathDiviner 1
execute unless score boss_phase STDeathDiviner matches 2 run execute if score boss_health STDeathDiviner matches ..500 run scoreboard players set boss_phase STDeathDiviner 2

#Keep boss from moving during phases 1 and 2
execute if score boss_phase STDeathDiviner matches 1.. run tp 3abf43c2-3abc-7cd9-f2c6-763517b653f6 4398.00 14 1449.00

#Burn Zones
execute if score burn_zone_timer STDeathDiviner matches ..100 run function shadowlands:tick/events/death_diviner_burn_zone_tick
execute if score burn_zone_one STDeathDiviner matches 1 run function shadowlands:tick/effects/death_diviner_burn_zone_one
execute if score burn_zone_two STDeathDiviner matches 1 run function shadowlands:tick/effects/death_diviner_burn_zone_two
execute if score burn_zone_three STDeathDiviner matches 1 run function shadowlands:tick/effects/death_diviner_burn_zone_three
execute if score burn_zone_four STDeathDiviner matches 1 run function shadowlands:tick/effects/death_diviner_burn_zone_four

#Burning Soul Braziers
execute if score boss_phase STDeathDiviner matches 1.. run function shadowlands:tick/events/burning_soul_brazier_tick

#Cancel Levitation
effect clear @a[x=4340,y=9,z=1428,dx=70,dy=6,dz=42] minecraft:levitation

#=======Flame Pillars======

#Summon at proper tick
execute if score boss_phase STDeathDiviner matches 1.. run execute if score pillar_summon_counter STDeathDiviner matches 120 run function shadowlands:tick/effects/death_diviner_summon_wave_one
execute if score boss_phase STDeathDiviner matches 1.. run execute if score pillar_summon_counter STDeathDiviner matches 200 run function shadowlands:tick/effects/death_diviner_summon_wave_two
execute if score boss_phase STDeathDiviner matches 1.. run execute if score pillar_summon_counter STDeathDiviner matches 320 run function shadowlands:tick/effects/death_diviner_summon_wave_three
execute if score boss_phase STDeathDiviner matches 1.. run execute if score pillar_summon_counter STDeathDiviner matches 430 run function shadowlands:tick/effects/death_diviner_summon_wave_four

execute if score boss_phase STDeathDiviner matches 1.. run scoreboard players add pillar_summon_counter STDeathDiviner 1
execute if score pillar_summon_counter STDeathDiviner matches 550 run scoreboard players set pillar_summon_counter STDeathDiviner 0

#Summon Pillars
execute if score pillar_wave_one_mod STDeathDiviner matches 0 run function shadowlands:tick/effects/death_diviner_pillar_wave_one_tick
execute if score pillar_wave_one_counter STDeathDiviner matches ..101 run scoreboard players add pillar_wave_one_counter STDeathDiviner 1
execute if score pillar_wave_one_counter STDeathDiviner matches ..101 run scoreboard players operation pillar_wave_one_mod STDeathDiviner = pillar_wave_one_counter STDeathDiviner
execute if score pillar_wave_one_counter STDeathDiviner matches ..101 run scoreboard players operation pillar_wave_one_mod STDeathDiviner %= wave_one_mod STDeathDiviner

execute if score pillar_wave_two_mod STDeathDiviner matches 0 run function shadowlands:tick/effects/death_diviner_pillar_wave_two_tick
execute if score pillar_wave_two_counter STDeathDiviner matches ..101 run scoreboard players add pillar_wave_two_counter STDeathDiviner 1
execute if score pillar_wave_two_counter STDeathDiviner matches ..101 run scoreboard players operation pillar_wave_two_mod STDeathDiviner = pillar_wave_two_counter STDeathDiviner
execute if score pillar_wave_two_counter STDeathDiviner matches ..101 run scoreboard players operation pillar_wave_two_mod STDeathDiviner %= wave_two_mod STDeathDiviner

execute if score pillar_wave_three_mod STDeathDiviner matches 0 run function shadowlands:tick/effects/death_diviner_pillar_wave_three_tick
execute if score pillar_wave_three_counter STDeathDiviner matches ..61 run scoreboard players add pillar_wave_three_counter STDeathDiviner 1
execute if score pillar_wave_three_counter STDeathDiviner matches ..61 run scoreboard players operation pillar_wave_three_mod STDeathDiviner = pillar_wave_three_counter STDeathDiviner
execute if score pillar_wave_three_counter STDeathDiviner matches ..61 run scoreboard players operation pillar_wave_three_mod STDeathDiviner %= wave_three_mod STDeathDiviner

execute if score pillar_wave_four_mod STDeathDiviner matches 0 run function shadowlands:tick/effects/death_diviner_pillar_wave_four_tick
execute if score pillar_wave_four_counter STDeathDiviner matches ..331 run scoreboard players add pillar_wave_four_counter STDeathDiviner 1
execute if score pillar_wave_four_counter STDeathDiviner matches ..331 run scoreboard players operation pillar_wave_four_mod STDeathDiviner = pillar_wave_four_counter STDeathDiviner
execute if score pillar_wave_four_counter STDeathDiviner matches ..331 run scoreboard players operation pillar_wave_four_mod STDeathDiviner %= wave_four_mod STDeathDiviner

#PHASE TWO
execute if score boss_phase STDeathDiviner matches 2 run function shadowlands:tick/events/death_diviner_phase_two_tick

#Dead Detect
execute if score boss_death_time STDeathDiviner matches 1.. run scoreboard players set boss_stage STDeathDiviner 2
#Backup Detect
execute if entity @a[x=4393,y=12.00,z=1435.00,dx=15,dy=0,dz=27] run execute if score boss_health STDeathDiviner matches ..0 run scoreboard players set boss_stage STDeathDiviner 2
execute if score boss_stage STDeathDiviner matches 2 run function shadowlands:tick/events/death_diviner_complete