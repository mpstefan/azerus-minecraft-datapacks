# Forceload Shadowlands
function shadowlands:forceload_shadowlands

# Clear Mobs
function shadowlands:clear_shadow_mobs

# Reset Boss States
scoreboard players set boss_stage STGrandEvoker 0
bossbar remove grandevoker
scoreboard players set boss_stage STSpiderLord 0
bossbar remove spiderlord
scoreboard players set boss_stage STDeathDiviner 0
bossbar remove deathdiviner

# Reset Player Spawn Tags
function shadowlands:global_shadow_tag_clear

# === Clear Flames ===
# Antechamber Flames
fill 4417 14 1451 4422 14 1446 air

# Grand Evoker
scoreboard players set grand_evoker STFlames 0
fill 4495 33 1449 4494 33 1448 air

# Spider Lord
scoreboard players set spider_lord STFlames 0
fill 4510 36 1379 4510 36 1379 air

# SSBridge
scoreboard players set ssbridge STFlames 0
fill 4506 19 1330 4506 19 1330 air

# Towers
scoreboard players set towers STFlames 0
fill 4372 17 1547 4373 17 1548 air

# Remove Antechamber Glass Bridge
fill 4420 0 1448 4359 0 1449 air

# Seal Exit
function shadowlands:tick/events/seal_dark_exit

# === Clear and Reset Loot ===
#Clear Death Diviner Chest
fill 4404 12 1447 4404 12 1450 air replace
#Restore anvils on shadow altar
fill 4428 13 1449 4428 13 1448 air
fill 4428 13 1449 4428 13 1448 anvil[facing=south] replace

setblock 4470 28 1529 air
setblock 4470 28 1529 chest[facing=west]{LootTable:"shadowlands:chests/tier_2"}

setblock 4484 13 1387 air
setblock 4484 13 1387 chest[facing=east]{LootTable:"shadowlands:chests/tier_2"}

setblock 4387 13 1512 air
setblock 4387 13 1512 chest[facing=north]{LootTable:"shadowlands:chests/tier_2"}

setblock 4430 28 1384 air
setblock 4430 28 1384 chest[facing=south]{LootTable:"shadowlands:chests/tier_2"}

setblock 4376 15 1545 air
setblock 4376 15 1545 chest[facing=south]{LootTable:"shadowlands:chests/tier_2"}

setblock 4512 13 1330 air
setblock 4512 13 1330 chest[facing=west]{LootTable:"shadowlands:chests/tier_2"}

# Clear Boss Chests
setblock 4510 29 1371 air
setblock 4499 31 1449 air

# Unload Shadowlands
function shadowlands:unforceload_shadowlands

# Teleport all in Shadow Temple to exit
teleport @a[x=4300,y=0,z=1290,dx=213,dy=54,dz=304] 4433.50 26.00 1589.50 facing 4410 29 1589
