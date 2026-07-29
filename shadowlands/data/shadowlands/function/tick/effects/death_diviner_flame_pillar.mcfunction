#Particles + Sound
#particle minecraft:soul_fire_flame ~ ~2.5 ~ .3 1.75 .5 .05 150 force
particle minecraft:soul_fire_flame ~ ~2.5 ~ .3 1.3 .5 .05 40 force
particle minecraft:explosion ~ ~ ~ 0 0 0 .1 1 force
playsound minecraft:entity.illusioner.cast_spell hostile @a[distance=..20] ~ ~ ~

# Set player alight briefly
execute positioned as @a[distance=..1] run particle minecraft:soul_fire_flame ~ ~ ~ .5 1 .5 .001 150

#Place effects on hit players
#Impact
tp @a[distance=..1] ~ ~1 ~
execute positioned ~ ~1 ~ run tp @a[distance=..1] ~ ~1 ~

#Wither
effect give @a[distance=..1] minecraft:wither 5 3
execute positioned ~ ~1 ~ run effect give @a[distance=..1] minecraft:wither 5 1

#Flat Damage
effect give @a[distance=..1] minecraft:instant_damage 1 1
execute positioned ~ ~1 ~ run effect give @a[distance=..1] minecraft:instant_damage 2 0