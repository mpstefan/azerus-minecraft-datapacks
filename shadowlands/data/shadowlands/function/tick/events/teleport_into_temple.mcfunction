playsound minecraft:block.portal.travel player @a[x=4491,y=5,z=1480,dx=0.5,dy=0.5] 4489.0 6 1481.0 0.1 0.01
execute as @a[x=4491,y=5,z=1480,dx=0.5,dy=0.5] run tp @s 4489.0 6 1481.0 180 0
particle minecraft:reverse_portal 4489.0 7 1480.0 1 1 1 0.1 2000
particle minecraft:flash 4489.0 7 1480.0 0 0 0 .001 1