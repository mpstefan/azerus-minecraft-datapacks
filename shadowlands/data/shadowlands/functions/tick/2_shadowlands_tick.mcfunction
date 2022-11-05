function shadowlands:tick/3_init_shadow_temple_tick_if_players_present
function shadowlands:tick/rules/remove_persistence_near_cloud
function shadowlands:tick/rules/clear_iron_horse_armor

function shadowlands:tick/events/shadowlands_title

function shadowlands:tick/effects/empower_skeletons

execute if entity @a[x=4309,y=78,z=1586,distance=..25,tag=!SLSpawn1] run function shadowlands:tick/spawns/slspawn1_plague_archers_near_well
execute if entity @a[x=4297,y=74,z=1588,distance=..3,tag=!SLSpawn2] run function shadowlands:tick/spawns/slspawn2_creeper_well
execute if entity @a[x=4332,y=78,z=1595,distance=..15,tag=!SLSpawn3] run function shadowlands:tick/spawns/slspawn3_first_reanimated_knights
execute if entity @a[x=4260,y=42,z=1698,distance=..8,tag=!SLSpawn4] run function shadowlands:tick/spawns/slspawn4_dreadknight_cave
execute if entity @a[x=4358,y=72,z=1544,distance=..20,tag=!SLSpawn5] run function shadowlands:tick/spawns/slspawn5_courtyard
execute if entity @a[x=4408,y=68,z=1576,distance=..20,tag=!SLSpawn6] run function shadowlands:tick/spawns/slspawn6_reaper
execute if entity @a[x=4381,y=72,z=1493,distance=..20,tag=!SLSpawn7] run function shadowlands:tick/spawns/slspawn7_ebon_road_bend
execute if entity @a[x=4412,y=74,z=1488,distance=..13,tag=!SLSpawn8] run function shadowlands:tick/spawns/slspawn8_plague_archer_ambush
execute if entity @a[x=4445,y=80,z=1493,distance=..13,tag=!SLSpawn9] run function shadowlands:tick/spawns/slspawn9_nightmare_wyvern_flyover
execute if entity @a[x=4461,y=87,z=1529,distance=..25,tag=!SLSpawn10] run function shadowlands:tick/spawns/slspawn10_ebon_road_end

function shadowlands:tick/effects/nightmare_wyvern_loop