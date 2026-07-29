#Particles + Sound
particle minecraft:soul_fire_flame ~ ~ ~ .3 .3 .9 .01 40 force
#particle minecraft:explosion ~ ~ ~ 0 0 0 .001 1 force
playsound minecraft:entity.illusioner.cast_spell hostile @a[distance=..20] ~ ~ ~

#Set player alight briefly
execute positioned as @a[distance=..1] run particle minecraft:soul_fire_flame ~ ~ ~ .5 1 .5 .001 500

#Place effects on hit players
#Impact
#tp @a[distance=..1] ~ ~1 ~

#Wither
effect give @a[distance=..1] minecraft:wither 15 3

#Flat Damage
effect give @a[distance=..1] minecraft:instant_damage 2 1