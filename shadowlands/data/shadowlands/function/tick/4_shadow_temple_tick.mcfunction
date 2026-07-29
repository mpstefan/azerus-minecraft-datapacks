#Make things harder
function shadowlands:tick/effects/empower_evoker_fangs
function shadowlands:tick/effects/phantasm_flames
function shadowlands:tick/effects/abyss_spider
function shadowlands:tick/effects/burning_soul

#Title
function shadowlands:tick/events/shadow_temple_title

#Burning Soul Targeting
execute as @e[name="Burning Soul"] run data modify entity @s Target set from entity @p UUID

#Keep track of players
execute store result score players STStats if entity @a[x=4300,y=0,z=1290,dx=213,dy=54,dz=304]

#Replenish Ebon Crossbow arrows
data modify entity @e[name="Ebon Crossbowman",sort=random, limit=1] HandItems[0].tag.ChargedProjectiles set value [{"id": "tipped_arrow","Count": 1b,"tag": {"Potion": "minecraft:water","CustomPotionEffects": [{"Id": 15,"Amplifier": 1,"Duration": 200},{"Id": 20,"Duration": 100}],"display": {"Name": "\"Blinding Arrow\""}}}]
data modify entity @e[name="Ebon Crossbowman",sort=random, limit=1] HandItems[0].tag.Charged set value 1b

#Sealing Room
execute unless blocks 4482 7 1487 4486 7 1487 4482 4 1487 all run function shadowlands:tick/5_shadow_temple_seal_tick
execute if blocks 4482 7 1487 4486 7 1487 4482 4 1487 all run function shadowlands:tick/events/open_front_gate

# =========== Floating Towers =============
#Hallway Clear
tag @a[x=4340,y=12,z=1496,dx=10,dy=10,dz=70,tag=STTower1] remove STTower1
tag @a[x=4340,y=12,z=1496,dx=10,dy=10,dz=70,tag=STTower2] remove STTower2
tag @a[x=4340,y=12,z=1496,dx=10,dy=10,dz=70,tag=STTower3] remove STTower3
tag @a[x=4340,y=12,z=1496,dx=10,dy=10,dz=70,tag=STTower4] remove STTower4

#Pit Clear
tag @a[x=4368,y=4,z=1529,dx=64,dy=1,dz=37,tag=STTower1] remove STTower1
tag @a[x=4368,y=4,z=1529,dx=64,dy=1,dz=37,tag=STTower2] remove STTower2
tag @a[x=4368,y=4,z=1529,dx=64,dy=1,dz=37,tag=STTower3] remove STTower3
tag @a[x=4368,y=4,z=1529,dx=64,dy=1,dz=37,tag=STTower4] remove STTower4

execute if entity @a[x=4417,y=10,z=1555,distance=..2,tag=!STTower1] run function shadowlands:tick/events/tower1
execute if entity @a[x=4417,y=11,z=1541,distance=..2,tag=!STTower2] run function shadowlands:tick/events/tower2
execute if entity @a[x=4403,y=12,z=1533,distance=..2,tag=!STTower3] run function shadowlands:tick/events/tower3
execute if entity @a[x=4389,y=10,z=1548,distance=..3,tag=!STTower4] run function shadowlands:tick/events/tower4

#Clear Ender Pearls around Lantern
kill @e[type=minecraft:ender_pearl,x=4375,y=16,z=1548,distance=..15]

#Check for completion
execute if entity @a[x=4376,y=15,z=1547,dx=1,dy=1,dz=1] run scoreboard players set towers STFlames 1



# =========== Soul Sand Bridge ================
#Clear Ender Pearls on Bridge
kill @e[type=minecraft:ender_pearl,x=4463,y=13,z=1330,distance=..30]

execute if entity @a[x=4501,y=13,z=1327,dx=10,dy=1,dz=6] run scoreboard players set ssbridge STFlames 1

# Teleport Entrance
execute if entity @a[x=4491,y=5,z=1480,dx=0.5,dy=0.5] run function shadowlands:tick/events/teleport_into_temple

#Maintain all flames
execute if score towers STFlames matches 1 run function shadowlands:tick/events/light_towers_flame
execute if score ssbridge STFlames matches 1 run function shadowlands:tick/events/light_ssbridge_flame
execute if score grand_evoker STFlames matches 1 run function shadowlands:tick/events/light_grand_evoker_flame
execute if score spider_lord STFlames matches 1 run function shadowlands:tick/events/light_spider_lord_flame

# =========== Open Bridge to Death Diviner if all flames are lit and  ================

execute if score towers STFlames matches 1 run execute if score ssbridge STFlames matches 1 run execute if score grand_evoker STFlames matches 1 run execute if score spider_lord STFlames matches 1 run execute unless block 4420 0 1449 minecraft:black_stained_glass run fill 4420 0 1448 4359 0 1449 black_stained_glass

# ============ Mob Spawns ===================
execute if entity @a[x=4432.50,y=6.00,z=1449.00,distance=..15,tag=!STSpawn1] run function shadowlands:tick/spawns/stspawn1_antechamber
execute if entity @a[x=4411.50,y=13.00,z=1489.50,distance=..10,tag=!STSpawn2] run function shadowlands:tick/spawns/stspawn2_south_wing_chest_room_1
execute if entity @a[x=4378,y=13.00,z=1573,distance=..10,tag=!STSpawn3] run function shadowlands:tick/spawns/stspawn3_south_wing_before_towers
execute if entity @a[x=4345,y=13.00,z=1495,distance=..10,tag=!STSpawn4] run function shadowlands:tick/spawns/stspawn4_south_wing_long_hall
execute if entity @a[x=4459,y=13.00,z=1540,distance=..10,tag=!STSpawn5] run function shadowlands:tick/spawns/stspawn5_south_wing_before_stairs
execute if entity @a[x=4447,y=29.00,z=1548,distance=..10,tag=!STSpawn6] run function shadowlands:tick/spawns/stspawn6_south_wing_chest_room_2
execute if entity @a[x=4451,y=30,z=1463,distance=..6,tag=!STSpawn7] run function shadowlands:tick/spawns/stspawn7_south_wing_top_antechamber
execute if entity @a[x=4502,y=14,z=1408,distance=..8,tag=!STSpawn8] run function shadowlands:tick/spawns/stspawn8_north_wing_before_chest_room_1
execute if entity @a[x=4495,y=13,z=1379,distance=..7,tag=!STSpawn9] run function shadowlands:tick/spawns/stspawn9_north_wing_chest_room_1
execute if entity @a[x=4412,y=14,z=1408,distance=..7,tag=!STSpawn10] run function shadowlands:tick/spawns/stspawn10_north_wing_first_turn
execute if entity @a[x=4406,y=14,z=1346,distance=..7,tag=!STSpawn11] run function shadowlands:tick/spawns/stspawn11_north_wing_before_ss_bridge
execute if entity @a[x=4430,y=29,z=1392,distance=..7,tag=!STSpawn12] run function shadowlands:tick/spawns/stspawn12_north_wing_chest_2
execute if entity @a[x=4477,y=30,z=1434,distance=..7,tag=!STSpawn13] run function shadowlands:tick/spawns/stspawn13_north_wing_top_antechamber

execute if entity @a[x=4496,y=29,z=1417,dx=28,dy=10,dz=3,tag=!STSpawn14] run function shadowlands:tick/spawns/stspawn14_north_wing_initial_abyss_spider
execute if entity @a[x=4496,y=29,z=1406,dx=28,dy=10,dz=3,tag=!STSpawn15] run function shadowlands:tick/spawns/stspawn15_north_wing_second_line
execute if entity @a[x=4496,y=29,z=1395,dx=28,dy=10,dz=3,tag=!STSpawn16] run function shadowlands:tick/spawns/stspawn16_north_wing_third_line

# IF BOSS SCOREBOARDS DO NOT EXIST, THEY NEED TO BE CREATED AND AT LEAST HAVE BOSS_STAGE

# ============ Grand Evoker =================
# boss_stage STGrandEvoker
# 0 Not summoned
# 1 Active
# 2 Dead
execute if score boss_stage STGrandEvoker matches 0 run function shadowlands:tick/events/check_for_grand_evoker_summon
execute if score boss_stage STGrandEvoker matches 1 run function shadowlands:tick/events/grand_evoker_tick

# ============= Spider Lord =================
# UUID: 7849a723-eef3-4a42-ae81-d3d19211029a
execute if score boss_stage STSpiderLord matches 0 run function shadowlands:tick/events/check_for_spider_lord_summon
execute if score boss_stage STSpiderLord matches 1 run function shadowlands:tick/events/spider_lord_tick

# ============= Death Diviner =================
# UUID: 3abf43c2-3abc-7cd9-f2c6-763517b653f6
execute if block 4420 0 1449 minecraft:black_stained_glass run execute if score boss_stage STDeathDiviner matches 0 run function shadowlands:tick/effects/death_diviner_ready
execute if block 4420 0 1449 minecraft:black_stained_glass run execute if score boss_stage STDeathDiviner matches 0 run function shadowlands:tick/events/check_for_death_diviner_summon
execute if score boss_stage STDeathDiviner matches 1 run function shadowlands:tick/events/death_diviner_tick
execute if score boss_stage STDeathDiviner matches 2 run particle minecraft:soul_fire_flame 4404.50 13.40 1447.50 .1 .1 .1 .001 1
execute if score boss_stage STDeathDiviner matches 2 run particle minecraft:soul_fire_flame 4404.50 13.40 1450.50 .1 .1 .1 .001 1

#Kill Ender Pearls in final room
kill @e[x=4340,y=9,z=1428,dx=70,dy=20,dz=42,type=minecraft:ender_pearl]

# ============= Dungeon Exit =================
execute if score boss_stage STDeathDiviner matches 2 run execute if entity @a[x=4319,y=13,z=1448,distance=..4] run function shadowlands:tick/events/complete_shadow_temple