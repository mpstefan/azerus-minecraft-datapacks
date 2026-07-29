#Spawning
scoreboard players remove timer NightmareWyvern 1
execute if score timer NightmareWyvern matches ..0 run execute positioned 4404 100 1548 run function shadowlands:summon/nightmare_wyvern_1
execute if score timer NightmareWyvern matches ..0 run execute positioned 4404 100 1563 run function shadowlands:summon/nightmare_wyvern_2
execute if score timer NightmareWyvern matches ..0 run execute positioned 4404 100 1578 run function shadowlands:summon/nightmare_wyvern_3
execute if score timer NightmareWyvern matches ..0 run scoreboard players set timer NightmareWyvern 8400

#JUST TRY THE ABOVE

#Navigation
#Branch 1
execute as @e[name="Nightmare Wyvern",tag=!Loop1Branch1,x=4365,y=100,z=1611,distance=..6] run data modify entity @s AX set value 4388
execute as @e[name="Nightmare Wyvern",tag=!Loop1Branch1,x=4365,y=100,z=1611,distance=..6] run data modify entity @s AZ set value 1493
execute as @e[name="Nightmare Wyvern",tag=!Loop1Branch1,x=4365,y=100,z=1611,distance=..6] run tag @s remove Loop1Branch4
execute as @e[name="Nightmare Wyvern",tag=!Loop1Branch1,x=4365,y=100,z=1611,distance=..6] run tag @s add Loop1Branch1

#Branch 2
execute as @e[name="Nightmare Wyvern",tag=!Loop1Branch2,x=4388,y=100,z=1493,distance=..6] run data modify entity @s AX set value 4449
execute as @e[name="Nightmare Wyvern",tag=!Loop1Branch2,x=4388,y=100,z=1493,distance=..6] run data modify entity @s AZ set value 1509
execute as @e[name="Nightmare Wyvern",tag=!Loop1Branch2,x=4388,y=100,z=1493,distance=..6] run tag @s remove Loop1Branch1
execute as @e[name="Nightmare Wyvern",tag=!Loop1Branch2,x=4388,y=100,z=1493,distance=..6] run tag @s add Loop1Branch2

#Branch 3
execute as @e[name="Nightmare Wyvern",tag=!Loop1Branch3,x=4449,y=100,z=1509,distance=..6] run data modify entity @s AX set value 4440
execute as @e[name="Nightmare Wyvern",tag=!Loop1Branch3,x=4449,y=100,z=1509,distance=..6] run data modify entity @s AZ set value 1611
execute as @e[name="Nightmare Wyvern",tag=!Loop1Branch3,x=4449,y=100,z=1509,distance=..6] run tag @s remove Loop1Branch2
execute as @e[name="Nightmare Wyvern",tag=!Loop1Branch3,x=4449,y=100,z=1509,distance=..6] run tag @s add Loop1Branch3

#Branch 4
execute as @e[name="Nightmare Wyvern",tag=!Loop1Branch4,x=4440,y=100,z=1611,distance=..6] run data modify entity @s AX set value 4365
execute as @e[name="Nightmare Wyvern",tag=!Loop1Branch4,x=4440,y=100,z=1611,distance=..6] run data modify entity @s AZ set value 1611
execute as @e[name="Nightmare Wyvern",tag=!Loop1Branch4,x=4440,y=100,z=1611,distance=..6] run tag @s remove Loop1Branch3
execute as @e[name="Nightmare Wyvern",tag=!Loop1Branch4,x=4440,y=100,z=1611,distance=..6] run tag @s add Loop1Branch4