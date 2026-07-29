#Update Bossbar
execute store result bossbar spiderlord value run data get entity 7849a723-eef3-4a42-ae81-d3d19211029a Health

#Replenish levitate arrows
data modify entity 7849a723-eef3-4a42-ae81-d3d19211029a HandItems[0].tag.ChargedProjectiles set value [{"id": "tipped_arrow","Count": 1b,"tag": {"Potion": "minecraft:water","CustomPotionEffects": [{"Id": 25,"Amplifier": 1,"Duration": 200}],"display": {"Name": "\"Nightmare Arrow\""}}}]
data modify entity 7849a723-eef3-4a42-ae81-d3d19211029a HandItems[0].tag.Charged set value 1b

#Boss Entity Tracking
execute store result score boss_health STSpiderLord run data get entity 7849a723-eef3-4a42-ae81-d3d19211029a Health
execute store result score boss_death_time STSpiderLord run data get entity 7849a723-eef3-4a42-ae81-d3d19211029a DeathTime

#If at 75%, reset crossbowman summon
execute if score boss_health STSpiderLord matches 260.. run scoreboard players set summon_at_50 STSpiderLord 1

#Summon Crossbowman at 50%
execute if score summon_at_50 STSpiderLord matches 1 run function shadowlands:tick/events/spider_lord_summon_init
execute if score crossbow_ticks STSpiderLord matches 1.. run function shadowlands:tick/events/spider_lord_summon_crossbowman

#Dead Detect
execute if score boss_death_time STSpiderLord matches 1.. run scoreboard players set boss_stage STSpiderLord 2

#Backup Detect
execute if entity @a[x=4510,y=29,z=1379,distance=..10] run execute if score boss_health STSpiderLord matches ..0 run scoreboard players set boss_stage STSpiderLord 2

execute if score boss_stage STSpiderLord matches 2 run function shadowlands:tick/events/spider_lord_complete