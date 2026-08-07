function shadowlands:tick/effects/grand_evoker_summon

summon minecraft:ravager ~ ~ ~ {CustomName:{"text":"Shadow Beast"},PersistenceRequired:0b,Health:25f,attributes:[{id:"minecraft:movement_speed",base:0.2},{id:"minecraft:follow_range",base:500.0}],Team:"Shadow Temple",DeathLootTable:"minecraft:empty"}