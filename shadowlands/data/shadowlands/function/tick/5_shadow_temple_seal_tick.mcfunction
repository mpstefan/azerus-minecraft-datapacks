#Close gate if open
execute if block 4484 4 1515 air run fill 4485 4 1515 4483 6 1515 minecraft:iron_bars replace

#Teleport past front gate
execute as @a[x=4483,y=4,z=1516,dx=2,dy=2] run tp @s 4484 4 1514

#Determine whether or not to spawn skeletons
#Do scoreboard objectives add SLSkeletons if new server
execute store result score total SLSkeletons if entity @e[name="Skeleton",x=4469,y=3,z=1485,dx=30,dy=7,dz=30]
execute if score total SLSkeletons matches ..10 run function shadowlands:tick/events/seal_room_skeletons
