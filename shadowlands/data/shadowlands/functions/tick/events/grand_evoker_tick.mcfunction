#Update Bossbar
execute store result bossbar grandevoker value run data get entity 420abbc7-7bfd-423c-8b70-aae655f74c38 Health

#Boss Particle Effects
execute as 420abbc7-7bfd-423c-8b70-aae655f74c38 at @s run particle portal ~1 ~1 ~ .1 .1 .1 5 2
execute as 420abbc7-7bfd-423c-8b70-aae655f74c38 at @s run particle reverse_portal ~1 ~1 ~ .1 .1 .1 .0001 2

particle portal 4515 30 1455 .1 .1 .1 .1 2 normal @a
particle portal 4515 30 1442 .1 .1 .1 .1 2 normal @a
particle portal 4505 30 1455 .1 .1 .1 .1 2 normal @a
particle portal 4505 30 1442 .1 .1 .1 .1 2 normal @a



#Boss Entity Tracking
execute store result score boss_health STGrandEvoker run data get entity 420abbc7-7bfd-423c-8b70-aae655f74c38 Health
execute store result score boss_death_time STGrandEvoker run data get entity 420abbc7-7bfd-423c-8b70-aae655f74c38 DeathTime

#Don't fly around dude
tp 420abbc7-7bfd-423c-8b70-aae655f74c38 4501.00 32.00 1449.00

#Spells
execute store result score spell_ticks STGrandEvoker run data get entity @e[name="Grand Evoker",limit=1] SpellTicks
execute if score spell_ticks STGrandEvoker matches 1 run function shadowlands:tick/events/grand_evoker_spell_init
execute if score spell1_ticks STGrandEvoker matches 1.. run function shadowlands:tick/events/grand_evoker_spell1
execute if score spell2_ticks STGrandEvoker matches 1.. run function shadowlands:tick/events/grand_evoker_spell2
execute if score spell3_ticks STGrandEvoker matches 1.. run function shadowlands:tick/events/grand_evoker_spell3
execute if score spell4_ticks STGrandEvoker matches 1.. run function shadowlands:tick/events/grand_evoker_spell4
execute if score spell5_ticks STGrandEvoker matches 1.. run function shadowlands:tick/events/grand_evoker_spell5
execute if score spell6_ticks STGrandEvoker matches 1.. run function shadowlands:tick/events/grand_evoker_spell6

#Dead Detect
execute if score boss_death_time STGrandEvoker matches 1.. run scoreboard players set boss_stage STGrandEvoker 2
#Backup detect
execute if entity @a[x=4500,y=30,z=1449,distance=..10] run execute if score boss_health STGrandEvoker matches ..0 run scoreboard players set boss_stage STGrandEvoker 2
execute if score boss_stage STGrandEvoker matches 2 run function shadowlands:tick/events/grand_evoker_complete