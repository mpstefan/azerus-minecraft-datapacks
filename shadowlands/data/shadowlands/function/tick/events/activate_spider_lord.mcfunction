#ID of the Lord of Spiders based on UUID is currently 7849a723-eef3-4a42-ae81-d3d19211029a

execute positioned 4510 30 1377 run function shadowlands:summon/lord_of_spiders
execute positioned 4510.5 40.5 1377 run function shadowlands:summon/abyss_spider

scoreboard players set boss_stage STSpiderLord 1
scoreboard players set summon_at_50 STSpiderLord 1

#Bossbar Setup
bossbar remove spiderlord
bossbar add spiderlord {"text":"Lord of Spiders","color":"dark_purple"}
bossbar set spiderlord color purple
bossbar set spiderlord style notched_6
execute store result bossbar spiderlord max run attribute 7849a723-eef3-4a42-ae81-d3d19211029a minecraft:max_health base get