function shadowlands:summon/effect

summon minecraft:phantom ~ ~ ~ {Tags:["shadowlands_nightmare_wyvern"],CustomName:{"text":"Nightmare Wyvern"},PersistenceRequired:1b,Health:150.0f,size:20,attributes:[{id:"minecraft:max_health",base:150.0},{id:"minecraft:movement_speed",base:0.15},{id:"minecraft:follow_range",base:500.0}], UUID:[I;549813028,-1888204914,-1109992952,1332424855]}

summon minecraft:skeleton ~ ~ ~ {Tags:["shadowlands_new_summon"],CustomName:{"text":"Nightmare Bowman"},PersistenceRequired:1b,Health:50.0f,attributes:[{id:"minecraft:max_health",base:35.0},{id:"minecraft:follow_range",base:500.0}],active_effects:[{id:"minecraft:fire_resistance",show_particles:0b,amplifier:0,duration:2147483647}],equipment:{feet:{id:"minecraft:iron_boots"},legs:{id:"minecraft:iron_leggings"},chest:{id:"minecraft:iron_chestplate"}},drop_chances:{mainhand:0.01f,offhand:0.0f,head:0.0f,chest:0.0f,legs:0.0f,feet:0.0f}, UUID: [I;-807798820,873417864,-1390461399,1193714551]}

execute as @e[tag=shadowlands_new_summon,sort=nearest,limit=1] run function shadowlands:equipment/obsidian_bow
execute as @e[tag=shadowlands_new_summon,sort=nearest,limit=1] run function shadowlands:equipment/nightmare_arrow
execute as cfd9f7dc-340f-4c88-ad1f-3e294726a377 run ride @s mount @e[tag=shadowlands_nightmare_wyvern,sort=nearest,limit=1]

tag @e[tag=shadowlands_new_summon] remove shadowlands_new_summon
tag @e[tag=shadowlands_nightmare_wyvern] remove shadowlands_nightmare_wyvern