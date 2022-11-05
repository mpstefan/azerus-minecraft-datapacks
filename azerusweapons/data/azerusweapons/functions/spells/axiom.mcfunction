#Particles + Sound
particle minecraft:soul_fire_flame ~ ~2.5 ~ .3 1.3 .5 .05 200 force
particle minecraft:soul_fire_flame ~ ~ ~ 1.5 .3 1.5 .05 200 force
particle minecraft:large_smoke ~ ~ ~ .5 .1 .5 .1 25
particle minecraft:explosion ~ ~1 ~ 0 0 0 .1 1 force
particle minecraft:explosion ~1 ~ ~ 0 0 0 .1 1 force
particle minecraft:explosion ~ ~ ~1 0 0 0 .1 1 force
playsound minecraft:entity.illusioner.cast_spell hostile @a[distance=..20] ~ ~ ~ 1 0.6
playsound minecraft:entity.illusioner.cast_spell hostile @a[distance=..20] ~ ~ ~ 1 1

# Set entities alight briefly
execute positioned as @e[distance=..1] run particle minecraft:soul_fire_flame ~ ~ ~ .5 1 .5 .001 150

#Place effects on hit entities
#Impact
execute as @e[distance=..3] at @s run tp @s ~ ~1 ~

#Wither
effect give @e[distance=..3] minecraft:wither 5 9

# Set Cooldown
scoreboard players set @s AxiomCounter 200