#Spawning
scoreboard players remove timer NightmareWyvern 1
execute if score timer NightmareWyvern matches ..0 run forceload add 4380 1520 4424 1600
execute if score timer NightmareWyvern matches ..0 run execute positioned 4404 100 1548 run function shadowlands:summon/nightmare_wyvern_patrol1
execute if score timer NightmareWyvern matches ..0 run execute positioned 4404 100 1563 run function shadowlands:summon/nightmare_wyvern_patrol2
execute if score timer NightmareWyvern matches ..0 run execute positioned 4404 100 1578 run function shadowlands:summon/nightmare_wyvern_patrol3
execute if score timer NightmareWyvern matches ..0 run forceload remove 4380 1520 4424 1600

# Patrol Point 1
execute if score timer NightmareWyvern matches ..0 run execute positioned 4365 100 1611 run function shadowlands:tick/effects/nightmare_wyvern_moveto
execute if score timer NightmareWyvern matches 14260 run scoreboard players set timer NightmareWyvernAIFlash 4

# Patrol Point 2
execute if score timer NightmareWyvern matches 10800 run execute positioned 4396 90 1479 run function shadowlands:tick/effects/nightmare_wyvern_moveto
execute if score timer NightmareWyvern matches 10660 run scoreboard players set timer NightmareWyvernAIFlash 4

# Patrol Point 3
execute if score timer NightmareWyvern matches 7200 run execute positioned 4449 100 1509 run function shadowlands:tick/effects/nightmare_wyvern_moveto
execute if score timer NightmareWyvern matches 7060 run scoreboard players set timer NightmareWyvernAIFlash 4

# Patrol Point 4
execute if score timer NightmareWyvern matches 3600 run execute positioned 4440 100 1611 run function shadowlands:tick/effects/nightmare_wyvern_moveto
execute if score timer NightmareWyvern matches 3460 run scoreboard players set timer NightmareWyvernAIFlash 4

# Reset Timer at 0
execute if score timer NightmareWyvern matches ..0 run scoreboard players set timer NightmareWyvern 14400

#AI Flash for navigation
execute if score timer NightmareWyvernAIFlash matches 0 run execute as @e[name="Nightmare Wyvern"] run data modify entity @s NoAI set value 0
execute if score timer NightmareWyvern matches 0.. run scoreboard players remove timer NightmareWyvernAIFlash 1