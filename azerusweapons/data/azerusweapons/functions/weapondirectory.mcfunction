# Get spell id from held weapon
execute store result score @s AzerusSpellID run data get entity @s SelectedItem.tag.AzerusSpellID

# Add to spell counter scoreboards
execute unless score @s AxiomCounter matches ..99999999 run scoreboard players add @s AxiomCounter 0

# Lookup spell cast based on scoreboard value
execute if score @s AzerusSpellID matches 1.. run execute if score @s AxiomCounter matches ..0 rotated ~ 0 positioned ^ ^ ^4 run function azerusweapons:spells/axiom_blockcast

# Reset cast flag
scoreboard players reset @s AzerusCastFlag

