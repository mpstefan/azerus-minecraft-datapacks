# Add Iron Armor
execute as @e[type=minecraft:skeleton,name="Skeleton",tag=!Empowered,x=4190,y=0,z=1240,dx=439,dy=140,dz=461] run item replace entity @s armor.feet with minecraft:iron_boots
execute as @e[type=minecraft:skeleton,name="Skeleton",tag=!Empowered,x=4190,y=0,z=1240,dx=439,dy=140,dz=461] run item replace entity @s armor.legs with minecraft:iron_leggings
execute as @e[type=minecraft:skeleton,name="Skeleton",tag=!Empowered,x=4190,y=0,z=1240,dx=439,dy=140,dz=461] run item replace entity @s armor.chest with minecraft:iron_chestplate
execute as @e[type=minecraft:skeleton,name="Skeleton",tag=!Empowered,x=4190,y=0,z=1240,dx=439,dy=140,dz=461] run item replace entity @s armor.head with minecraft:iron_helmet

execute as @e[type=minecraft:skeleton,name="Skeleton",tag=!Empowered,x=4190,y=0,z=1240,dx=439,dy=140,dz=461] run attribute @s minecraft:max_health base set 20
execute as @e[type=minecraft:skeleton,name="Skeleton",tag=!Empowered,x=4190,y=0,z=1240,dx=439,dy=140,dz=461] run attribute @s minecraft:follow_range base set 500
execute as @e[type=minecraft:skeleton,name="Skeleton",tag=!Empowered,x=4190,y=0,z=1240,dx=439,dy=140,dz=461] run attribute @s minecraft:attack_damage base set 8


tag @e[type=minecraft:skeleton,name="Skeleton",tag=!Empowered] add Empowered