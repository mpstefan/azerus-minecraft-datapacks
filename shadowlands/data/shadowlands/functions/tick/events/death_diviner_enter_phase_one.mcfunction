#Start burn
scoreboard players set burn_zone_timer STDeathDiviner 0

#Ensure float is set
data modify entity 3abf43c2-3abc-7cd9-f2c6-763517b653f6 NoGravity set value 1
attribute 3abf43c2-3abc-7cd9-f2c6-763517b653f6 minecraft:generic.movement_speed base set 0

#Teleport Effect
#At Old Position
execute positioned as 3abf43c2-3abc-7cd9-f2c6-763517b653f6 run playsound minecraft:entity.illusioner.mirror_move hostile @a ~ ~ ~
execute positioned as 3abf43c2-3abc-7cd9-f2c6-763517b653f6 run particle minecraft:soul_fire_flame ~ ~1 ~ .5 1 .5 .1 500
execute positioned as 3abf43c2-3abc-7cd9-f2c6-763517b653f6 run particle minecraft:large_smoke ~ ~1 ~ .5 1 .5 .1 500


tp 3abf43c2-3abc-7cd9-f2c6-763517b653f6 4398.00 14 1449.00

#At Front

playsound minecraft:entity.illusioner.mirror_move hostile @a 4398.00 13 1449.00 100
execute positioned as 3abf43c2-3abc-7cd9-f2c6-763517b653f6 run particle minecraft:soul_fire_flame ~ ~1 ~ .5 1 .5 .1 500
execute positioned as 3abf43c2-3abc-7cd9-f2c6-763517b653f6 run particle minecraft:large_smoke ~ ~1 ~ .5 1 .5 .1 500