#Set timer based on players
execute if score burning_soul_timer STDeathDiviner matches ..0 run execute if score players STStats matches ..1 run scoreboard players set burning_soul_timer STDeathDiviner 100
execute if score burning_soul_timer STDeathDiviner matches ..0 run execute if score players STStats matches 2 run scoreboard players set burning_soul_timer STDeathDiviner 50
execute if score burning_soul_timer STDeathDiviner matches ..0 run execute if score players STStats matches 3 run scoreboard players set burning_soul_timer STDeathDiviner 38
execute if score burning_soul_timer STDeathDiviner matches ..0 run execute if score players STStats matches 4.. run scoreboard players set burning_soul_timer STDeathDiviner 25

#Progress Timer
scoreboard players remove burning_soul_timer STDeathDiviner 1

#Zone 1
execute if entity @a[x=4341,y=7,z=1439,dx=44,dy=8,dz=19] run function shadowlands:tick/events/burning_soul_brazier_zone_one_tick

#Zone 2
execute if entity @a[x=4328,y=7,z=1439,dx=44,dy=8,dz=19] run function shadowlands:tick/events/burning_soul_brazier_zone_two_tick

#Zone 3
execute if entity @a[x=4315,y=7,z=1439,dx=44,dy=8,dz=19] run function shadowlands:tick/events/burning_soul_brazier_zone_three_tick

#Zone 4
execute if entity @a[x=4302,y=7,z=1439,dx=44,dy=8,dz=19] run function shadowlands:tick/events/burning_soul_brazier_zone_four_tick