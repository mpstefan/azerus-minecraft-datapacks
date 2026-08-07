#ID of Grand Evoker based on UUID is currently 420abbc7-7bfd-423c-8b70-aae655f74c38

execute positioned 4501.00 32.00 1449.00 run function shadowlands:summon/grand_evoker

#Rotate
tp 420abbc7-7bfd-423c-8b70-aae655f74c38 4501.00 32.00 1449.00 facing 4517.50 30.00 1449.00
scoreboard players set boss_stage STGrandEvoker 1

#Bossbar Setup
bossbar remove grandevoker
bossbar add grandevoker {"text":"Grand Evoker","color":"dark_purple"}
bossbar set grandevoker color purple
bossbar set minecraft:grandevoker style notched_6
execute store result bossbar grandevoker max run attribute 420abbc7-7bfd-423c-8b70-aae655f74c38 minecraft:max_health base get