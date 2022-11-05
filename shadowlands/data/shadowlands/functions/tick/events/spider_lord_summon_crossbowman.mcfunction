#Teleport boss to spawn location so that he is next to the summoned crossbowman
tp 7849a723-eef3-4a42-ae81-d3d19211029a 4510 30 1377
execute positioned 4510.5 40.5 1377 run function shadowlands:summon/abyss_spider

scoreboard players remove crossbow_ticks STSpiderLord 1
scoreboard players set summon_at_50 STSpiderLord 0

execute positioned 4515 29 1381 run function shadowlands:tick/effects/spider_lord_flash
execute positioned 4515 29 1381 run function shadowlands:summon/ebon_crossbowman
execute positioned 4503 29 1381 run function shadowlands:tick/effects/spider_lord_flash
execute positioned 4503 29 1381 run function shadowlands:summon/ebon_crossbowman