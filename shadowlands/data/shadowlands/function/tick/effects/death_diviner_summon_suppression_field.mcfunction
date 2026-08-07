particle minecraft:dripping_obsidian_tear ~ ~5 ~ 0 0 0 .01 1 force
particle minecraft:portal ~ ~5 ~ 0 0 0 1 500 force
#summon area_effect_cloud ~ ~ ~ {Particle:portal,Radius:0.49f,RadiusPerTick:.1f,RadiusOnUse:0f,duration:95,WaitTime:140,Effects:[{Id:2,amplifier:3,duration:200},{Id:18,amplifier:10,duration:100}],UUID: [I;-1006054701,1281835488,-1740846902,736615562]}

summon minecraft:area_effect_cloud ~ ~ ~ {custom_particle:{type:"minecraft:portal"},Radius:0.49f,RadiusPerTick:0.1f,RadiusOnUse:0f,Duration:95,WaitTime:140,potion_contents:{custom_effects:[{id:"minecraft:slowness",amplifier:3,duration:200},{id:"minecraft:weakness",amplifier:10,duration:100}]},UUID: [I;-1006054701,1281835488,-1740846902,736615562]}

playsound minecraft:block.portal.trigger hostile @a[distance=..20] ~ ~5 ~ .3 0.8
