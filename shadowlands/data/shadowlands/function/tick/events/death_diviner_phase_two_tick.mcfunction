#Supression Crystal particles
particle portal 4404 18 1430 1 3 1 .01 20 force
particle portal 4404 18 1467 1 3 1 .01 20 force

#Supress every X tick
#Cloud UUID: c408d2d3-4c67-41e0-983c-c8ca2be7dc8a
scoreboard players add suppression_counter STDeathDiviner 1
execute if score suppression_counter STDeathDiviner matches 350 run scoreboard players set suppression_counter STDeathDiviner 0
execute if score suppression_counter STDeathDiviner matches 0 run execute positioned as @a[x=4340,y=9,z=1428,dx=70,dy=6,dz=42,sort=random,limit=1] positioned ~ 12 ~ run function shadowlands:tick/effects/death_diviner_summon_suppression_field
execute if score suppression_counter STDeathDiviner matches 120 run execute positioned as c408d2d3-4c67-41e0-983c-c8ca2be7dc8a run playsound minecraft:block.portal.ambient hostile @a[distance=..20] ~ ~ ~ 2 0.1

