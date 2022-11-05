particle minecraft:dripping_obsidian_tear ~ ~5 ~ 0 0 0 .01 1 force
particle minecraft:portal ~ ~5 ~ 0 0 0 1 500 force
summon area_effect_cloud ~ ~ ~ {Particle:portal,Radius:0.49f,RadiusPerTick:.1f,RadiusOnUse:0f,Duration:95,WaitTime:140,Effects:[{Id:2,Amplifier:3,Duration:200},{Id:18,Amplifier:10,Duration:100}],UUID: [I;-1006054701,1281835488,-1740846902,736615562]}

playsound minecraft:block.portal.trigger hostile @a[distance=..20] ~ ~5 ~ .3 0.8
