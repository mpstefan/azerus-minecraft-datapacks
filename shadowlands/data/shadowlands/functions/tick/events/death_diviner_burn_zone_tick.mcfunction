#Increment timer
scoreboard players add burn_zone_timer STDeathDiviner 1

#Burn zone 1
execute if score burn_zone_timer STDeathDiviner matches 20 run function shadowlands:tick/events/death_diviner_burn_zone_one_fangs
execute if score burn_zone_timer STDeathDiviner matches 30 run scoreboard players set burn_zone_one STDeathDiviner 1

#Burn zone 2
execute if score burn_zone_timer STDeathDiviner matches 40 run function shadowlands:tick/events/death_diviner_burn_zone_two_fangs
execute if score burn_zone_timer STDeathDiviner matches 50 run scoreboard players set burn_zone_two STDeathDiviner 1

#Burn zone 3
execute if score burn_zone_timer STDeathDiviner matches 60 run function shadowlands:tick/events/death_diviner_burn_zone_three_fangs
execute if score burn_zone_timer STDeathDiviner matches 70 run scoreboard players set burn_zone_three STDeathDiviner 1

#Burn zone 4
execute if score burn_zone_timer STDeathDiviner matches 80 run function shadowlands:tick/events/death_diviner_burn_zone_four_fangs
execute if score burn_zone_timer STDeathDiviner matches 90 run scoreboard players set burn_zone_four STDeathDiviner 1