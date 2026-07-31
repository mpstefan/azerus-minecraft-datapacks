#Spawning
scoreboard players remove timer NightmareWyvern 1
execute if score timer NightmareWyvern matches ..0 run execute positioned 4404 100 1548 run function shadowlands:summon/nightmare_wyvern_patrol1
execute if score timer NightmareWyvern matches ..0 run execute positioned 4404 100 1563 run function shadowlands:summon/nightmare_wyvern_patrol2
execute if score timer NightmareWyvern matches ..0 run execute positioned 4404 100 1578 run function shadowlands:summon/nightmare_wyvern_patrol3

execute if score timer NightmareWyvern matches ..0 run execute positioned 4365 100 1611 run function shadowlands:tick/effects/nightmare_wyvern_moveto

execute if score timer NightmareWyvern matches ..0 run scoreboard players set timer NightmareWyvern 8400

#AI Flash for navigation
execute if score timer NightmareWyvernAIFlash matches 0 run execute as @e[name="Nightmare Wyvern"] run data modify entity @s NoAI set value 0
scoreboard players remove timer NightmareWyvernAIFlash 1

# Navigation

# Branch 1

execute if entity @e[name="Nightmare Wyvern",tag=!Loop1Branch1,x=4365,y=100,z=1611,distance=..15] run execute positioned 4388 100 1493 run function shadowlands:tick/effects/nightmare_wyvern_moveto
execute if entity @e[name="Nightmare Wyvern",tag=!Loop1Branch1,x=4365,y=100,z=1611,distance=..15] run tag @e[name="Nightmare Wyvern"] remove Loop1Branch4
execute if entity @e[name="Nightmare Wyvern",tag=!Loop1Branch1,x=4365,y=100,z=1611,distance=..15] run tag @e[name="Nightmare Wyvern"] add Loop1Branch1



# Branch 2

execute if entity @e[name="Nightmare Wyvern",tag=!Loop1Branch2,x=4388,y=100,z=1493,distance=..15] run execute positioned 4449 100 1509 run function shadowlands:tick/effects/nightmare_wyvern_moveto
execute if entity @e[name="Nightmare Wyvern",tag=!Loop1Branch2,x=4388,y=100,z=1493,distance=..15] run tag @e[name="Nightmare Wyvern"] remove Loop1Branch1
execute if entity @e[name="Nightmare Wyvern",tag=!Loop1Branch2,x=4388,y=100,z=1493,distance=..15] run tag @e[name="Nightmare Wyvern"] add Loop1Branch2


# Branch 3

execute if entity @e[name="Nightmare Wyvern",tag=!Loop1Branch3,x=4449,y=100,z=1509,distance=..15] run execute positioned 4440 100 1611 run function shadowlands:tick/effects/nightmare_wyvern_moveto
execute if entity @e[name="Nightmare Wyvern",tag=!Loop1Branch3,x=4449,y=100,z=1509,distance=..15] run tag @e[name="Nightmare Wyvern"] remove Loop1Branch2
execute if entity @e[name="Nightmare Wyvern",tag=!Loop1Branch3,x=4449,y=100,z=1509,distance=..15] run tag @e[name="Nightmare Wyvern"] add Loop1Branch3


# Branch 4

execute if entity @e[name="Nightmare Wyvern",tag=!Loop1Branch4,x=4440,y=100,z=1611,distance=..15] run execute positioned 4365 100 1611 run function shadowlands:tick/effects/nightmare_wyvern_moveto
execute if entity @e[name="Nightmare Wyvern",tag=!Loop1Branch4,x=4440,y=100,z=1611,distance=..15] run tag @e[name="Nightmare Wyvern"] remove Loop1Branch3
execute if entity @e[name="Nightmare Wyvern",tag=!Loop1Branch4,x=4440,y=100,z=1611,distance=..15] run tag @e[name="Nightmare Wyvern"] add Loop1Branch4
