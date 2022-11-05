execute store result score left SLSkeletons if entity @e[name="Skeleton",x=4477,y=4,z=1500,dx=1,dy=1,dz=0]
execute store result score right SLSkeletons if entity @e[name="Skeleton",x=4491,y=4,z=1500,dx=-1,dy=1,dz=0]

execute if score left SLSkeletons matches 0 run summon skeleton 4478 4 1500 {"HandItems":[{"id":"bow","Count": 1},{}],"HandDropChances": [0.0f,0.0f],"ArmorDropChances": [0.0f,0.0f,0.0f,0.0f]}
execute if score right SLSkeletons matches 0 run summon skeleton 4490 4 1500 {"HandItems":[{"id":"bow","Count": 1},{}],"HandDropChances": [0.0f,0.0f],"ArmorDropChances": [0.0f,0.0f,0.0f,0.0f]}