# Movement for the Shadowlands Nightmare Patrol only

# Mark movement location and store the target
summon marker ~ ~ ~ {Tags: ["temp_pos_marker"]}

data modify storage shadowlands:nightmare_target pos set value [I; 0, 0, 0]
execute store result storage shadowlands:nightmare_target pos[0] int 1 run data get entity @e[tag=temp_pos_marker,limit=1] Pos[0]
execute store result storage shadowlands:nightmare_target pos[1] int 1 run data get entity @e[tag=temp_pos_marker,limit=1] Pos[1]
execute store result storage shadowlands:nightmare_target pos[2] int 1 run data get entity @e[tag=temp_pos_marker,limit=1] Pos[2]

kill @e[tag=temp_pos_marker]


# Patrol 1
execute as 20c57b24-8f74-478e-bdd6-da084f6b30a8 run data modify entity @s anchor_pos set from storage shadowlands:nightmare_target pos
execute as 20c57b24-8f74-478e-bdd6-da084f6b30a8 run data modify entity @s NoAI set value 1b

# Patrol 2
execute as 20c57b24-8f74-478e-bdd6-da084f6b30a2 run data modify entity @s anchor_pos set from storage shadowlands:nightmare_target pos
execute as 20c57b24-8f74-478e-bdd6-da084f6b30a2 run data modify entity @s NoAI set value 1b

# Patrol 3
execute as 20c57b24-8f74-478e-bdd6-da084f6b3097 run data modify entity @s anchor_pos set from storage shadowlands:nightmare_target pos
execute as 20c57b24-8f74-478e-bdd6-da084f6b3097 run data modify entity @s NoAI set value 1b

# Flash AI for move to take effect
scoreboard players set timer NightmareWyvernAIFlash 4