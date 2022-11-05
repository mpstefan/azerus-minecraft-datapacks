bossbar remove deathdiviner

#Kill flame pillar armor stands
kill 4268d156-24e4-491b-abd2-3e901cd62402
kill 3f595284-01d9-4695-ae12-e3d8bb123b1b
kill 4762d507-06e7-4895-902f-101cc37a0591
kill 12091e3c-072c-0eb8-ff63-a9d43a518738

kill @e[name="Burning Soul"]

#Loot Chest
fill 4404 12 1448 4404 12 1449 air
setblock 4404 12 1448 minecraft:chest[facing=west,type=right]{LootTable:"shadowlands:chests/death_diviner"} replace
setblock 4404 12 1449 minecraft:chest[facing=west,type=left]{LootTable:"shadowlands:chests/death_diviner_2"} replace
setblock 4404 12 1447 polished_blackstone_wall replace
setblock 4404 12 1450 polished_blackstone_wall replace

execute positioned as 3abf43c2-3abc-7cd9-f2c6-763517b653f6 run function shadowlands:tick/effects/death_diviner_defeat
function shadowlands:tick/events/open_dark_exit