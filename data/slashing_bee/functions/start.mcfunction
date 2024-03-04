
schedule clear slashing_bee:preparation/preparation_loop
schedule clear slashing_bee:preparation/item_recover/warning

# Reset
effect clear @a
scoreboard players set @a Dead 0
scoreboard players set time Variables 0
scoreboard players set @a Xp_Earned 0
kill @e[type=item]
# Map Clear cancel
schedule clear slashing_bee:maps/forceload_clear
# Reset Preparation Room
# Item Recover
kill @e[tag=Item_Recover]
# Summon
schedule clear slashing_bee:preparation/summon/chest/empty_chest_detect
kill @e[tag=Normal_Summon]
kill @e[tag=Special_Summon]
# Character Xp display
kill @e[tag=Character_Xp1]
kill @e[tag=Character_Xp2]
# Map Select
kill @e[tag=Map_Select]
# Abilities
scoreboard players reset @a Click
scoreboard players reset @a Thief
scoreboard players reset @a ThiefHalf
scoreboard players reset @a Take_Off
scoreboard players reset @a Blood_Thirst
scoreboard players reset @a Demonic_Fury
scoreboard players reset @a Flee
scoreboard players reset @a Add_Bolt_Bow
scoreboard players reset @a Add_Bolt_Crossbow
scoreboard players reset @a Frenzy
scoreboard players reset @a Life_Arrow_Bow
scoreboard players reset @a Life_Arrow_Crossbow
scoreboard players reset @a Unleash
scoreboard players reset @a Potion
scoreboard players reset @a Rock_Throw
# Items
scoreboard players reset @a Delay_Arcane_Grimoire
scoreboard players reset @a Delay_Light_Grimoire
scoreboard players reset @a Delay_Fire_Grimoire
scoreboard players reset @a Delay_Ice_Grimoire
scoreboard players reset @a Delay_Dark_Grimoire
scoreboard players reset @a Delay_Life_Grimoire
scoreboard players reset @a Delay_Death_Grimoire
scoreboard players reset @a Delay_Earth_Grimoire
scoreboard players reset @a Delay_Sky_Grimoire
scoreboard players reset @a Delay_Electric_Grimoire
scoreboard players reset @a Delay_Wind_Grimoire
scoreboard players reset @a Death_Scythe_Kill
scoreboard players reset @a Earth_Shield_Block
scoreboard players reset @a Reload_Earth_Chestplate

# Map Setup
scoreboard objectives setdisplay sidebar Ennemis
execute store result storage map map_number int 1 run scoreboard players get map_number Variables
function slashing_bee:maps/macro_setup with storage map

# Setup Teams
team join Player @a
# Bossbar Player1
bossbar set minecraft:energy_player_1 players @a[tag=Player1]
bossbar set energy_player_1 visible true
scoreboard players set @a[tag=Player1] Energy 500
# Bossbar Player2
bossbar set minecraft:energy_player_2 players @a[tag=Player2]
bossbar set energy_player_2 visible true
scoreboard players set @a[tag=Player2] Energy 500

# ----- Setup Players -----
# Save player1's inventory
item replace block 739 106 -363 container.0 from entity @r[tag=Player1] inventory.0
item replace block 739 106 -363 container.1 from entity @r[tag=Player1] inventory.1
item replace block 739 106 -363 container.2 from entity @r[tag=Player1] inventory.2
item replace block 739 106 -363 container.3 from entity @r[tag=Player1] inventory.3
item replace block 739 106 -363 container.4 from entity @r[tag=Player1] inventory.4
item replace block 739 106 -363 container.5 from entity @r[tag=Player1] inventory.5
item replace block 739 106 -363 container.6 from entity @r[tag=Player1] inventory.6
item replace block 739 106 -363 container.7 from entity @r[tag=Player1] inventory.7
item replace block 739 106 -363 container.8 from entity @r[tag=Player1] inventory.8
item replace block 739 106 -363 container.9 from entity @r[tag=Player1] inventory.9
item replace block 739 106 -363 container.10 from entity @r[tag=Player1] inventory.10
item replace block 739 106 -363 container.11 from entity @r[tag=Player1] inventory.11
item replace block 739 106 -363 container.12 from entity @r[tag=Player1] inventory.12
item replace block 739 106 -363 container.13 from entity @r[tag=Player1] inventory.13
item replace block 739 106 -363 container.14 from entity @r[tag=Player1] inventory.14
item replace block 739 106 -363 container.15 from entity @r[tag=Player1] inventory.15
item replace block 739 106 -363 container.16 from entity @r[tag=Player1] inventory.16
item replace block 739 106 -363 container.17 from entity @r[tag=Player1] inventory.17
item replace block 739 106 -363 container.18 from entity @r[tag=Player1] inventory.18
item replace block 739 106 -363 container.19 from entity @r[tag=Player1] inventory.19
item replace block 739 106 -363 container.20 from entity @r[tag=Player1] inventory.20
item replace block 739 106 -363 container.21 from entity @r[tag=Player1] inventory.21
item replace block 739 106 -363 container.22 from entity @r[tag=Player1] inventory.22
item replace block 739 106 -363 container.23 from entity @r[tag=Player1] inventory.23
item replace block 739 106 -363 container.24 from entity @r[tag=Player1] inventory.24
item replace block 739 106 -363 container.25 from entity @r[tag=Player1] inventory.25
item replace block 739 106 -363 container.26 from entity @r[tag=Player1] inventory.26
item replace block 739 106 -364 container.0 from entity @r[tag=Player1] hotbar.0
item replace block 739 106 -364 container.1 from entity @r[tag=Player1] hotbar.1
item replace block 739 106 -364 container.2 from entity @r[tag=Player1] hotbar.2
item replace block 739 106 -364 container.3 from entity @r[tag=Player1] hotbar.3
item replace block 739 106 -364 container.4 from entity @r[tag=Player1] hotbar.4
item replace block 739 106 -364 container.5 from entity @r[tag=Player1] hotbar.5
item replace block 739 106 -364 container.6 from entity @r[tag=Player1] hotbar.6
item replace block 739 106 -364 container.7 from entity @r[tag=Player1] hotbar.7
item replace block 739 106 -364 container.8 from entity @r[tag=Player1] hotbar.8
item replace block 739 106 -364 container.9 from entity @r[tag=Player1] weapon.offhand
item replace block 739 106 -364 container.10 from entity @r[tag=Player1] armor.head
item replace block 739 106 -364 container.11 from entity @r[tag=Player1] armor.chest
item replace block 739 106 -364 container.12 from entity @r[tag=Player1] armor.legs
item replace block 739 106 -364 container.13 from entity @r[tag=Player1] armor.feet

# Save player2's inventory
item replace block 740 106 -363 container.0 from entity @r[tag=Player2] inventory.0
item replace block 740 106 -363 container.1 from entity @r[tag=Player2] inventory.1
item replace block 740 106 -363 container.2 from entity @r[tag=Player2] inventory.2
item replace block 740 106 -363 container.3 from entity @r[tag=Player2] inventory.3
item replace block 740 106 -363 container.4 from entity @r[tag=Player2] inventory.4
item replace block 740 106 -363 container.5 from entity @r[tag=Player2] inventory.5
item replace block 740 106 -363 container.6 from entity @r[tag=Player2] inventory.6
item replace block 740 106 -363 container.7 from entity @r[tag=Player2] inventory.7
item replace block 740 106 -363 container.8 from entity @r[tag=Player2] inventory.8
item replace block 740 106 -363 container.9 from entity @r[tag=Player2] inventory.9
item replace block 740 106 -363 container.10 from entity @r[tag=Player2] inventory.10
item replace block 740 106 -363 container.11 from entity @r[tag=Player2] inventory.11
item replace block 740 106 -363 container.12 from entity @r[tag=Player2] inventory.12
item replace block 740 106 -363 container.13 from entity @r[tag=Player2] inventory.13
item replace block 740 106 -363 container.14 from entity @r[tag=Player2] inventory.14
item replace block 740 106 -363 container.15 from entity @r[tag=Player2] inventory.15
item replace block 740 106 -363 container.16 from entity @r[tag=Player2] inventory.16
item replace block 740 106 -363 container.17 from entity @r[tag=Player2] inventory.17
item replace block 740 106 -363 container.18 from entity @r[tag=Player2] inventory.18
item replace block 740 106 -363 container.19 from entity @r[tag=Player2] inventory.19
item replace block 740 106 -363 container.20 from entity @r[tag=Player2] inventory.20
item replace block 740 106 -363 container.21 from entity @r[tag=Player2] inventory.21
item replace block 740 106 -363 container.22 from entity @r[tag=Player2] inventory.22
item replace block 740 106 -363 container.23 from entity @r[tag=Player2] inventory.23
item replace block 740 106 -363 container.24 from entity @r[tag=Player2] inventory.24
item replace block 740 106 -363 container.25 from entity @r[tag=Player2] inventory.25
item replace block 740 106 -363 container.26 from entity @r[tag=Player2] inventory.26
item replace block 740 106 -364 container.0 from entity @r[tag=Player2] hotbar.0
item replace block 740 106 -364 container.1 from entity @r[tag=Player2] hotbar.1
item replace block 740 106 -364 container.2 from entity @r[tag=Player2] hotbar.2
item replace block 740 106 -364 container.3 from entity @r[tag=Player2] hotbar.3
item replace block 740 106 -364 container.4 from entity @r[tag=Player2] hotbar.4
item replace block 740 106 -364 container.5 from entity @r[tag=Player2] hotbar.5
item replace block 740 106 -364 container.6 from entity @r[tag=Player2] hotbar.6
item replace block 740 106 -364 container.7 from entity @r[tag=Player2] hotbar.7
item replace block 740 106 -364 container.8 from entity @r[tag=Player2] hotbar.8
item replace block 740 106 -364 container.9 from entity @r[tag=Player2] weapon.offhand
item replace block 740 106 -364 container.10 from entity @r[tag=Player2] armor.head
item replace block 740 106 -364 container.11 from entity @r[tag=Player2] armor.chest
item replace block 740 106 -364 container.12 from entity @r[tag=Player2] armor.legs
item replace block 740 106 -364 container.13 from entity @r[tag=Player2] armor.feet

# Setup Equipment Player 1
clear @a
# Armor
item replace entity @a[tag=Player1] armor.head from entity @e[type=armor_stand,limit=1,tag=Armor1] armor.head
execute as @a[tag=Player1] at @s run function slashing_bee:start/macro_setup_weapon with entity @e[type=armor_stand,limit=1,tag=Armor1] ArmorItems[3].tag
item replace entity @a[tag=Player1] armor.chest from entity @e[type=armor_stand,limit=1,tag=Armor1] armor.chest
execute as @a[tag=Player1] at @s run function slashing_bee:start/macro_setup_weapon with entity @e[type=armor_stand,limit=1,tag=Armor1] ArmorItems[2].tag
item replace entity @a[tag=Player1] armor.legs from entity @e[type=armor_stand,limit=1,tag=Armor1] armor.legs
execute as @a[tag=Player1] at @s run function slashing_bee:start/macro_setup_weapon with entity @e[type=armor_stand,limit=1,tag=Armor1] ArmorItems[1].tag
item replace entity @a[tag=Player1] armor.feet from entity @e[type=armor_stand,limit=1,tag=Armor1] armor.feet
execute as @a[tag=Player1] at @s run function slashing_bee:start/macro_setup_weapon with entity @e[type=armor_stand,limit=1,tag=Armor1] ArmorItems[0].tag
# Weapons
item replace entity @a[tag=Player1] hotbar.0 from entity @e[type=minecraft:item_frame,tag=PrimaryWeapon1,limit=1] container.0
execute as @a[tag=Player1] at @s run function slashing_bee:start/macro_setup_weapon with entity @e[tag=PrimaryWeapon1,limit=1] Item.tag
item replace entity @a[tag=Player1] hotbar.1 from entity @e[type=minecraft:item_frame,tag=SecondaryWeapon1,limit=1] container.0
execute as @a[tag=Player1] at @s run function slashing_bee:start/macro_setup_weapon with entity @e[tag=SecondaryWeapon1,limit=1] Item.tag
# Character
execute as @a[tag=Player1] at @s run function slashing_bee:start/macro_setup_character with entity @e[type=minecraft:item_frame,tag=Character1,limit=1] Item.tag
# Consumables
data modify entity @e[type=minecraft:item_frame,tag=FirstConsumable1,limit=1] Item.tag.slot set value 6
execute as @a[tag=Player1] at @s run function slashing_bee:start/macro_setup_consumable with entity @e[type=minecraft:item_frame,tag=FirstConsumable1,limit=1] Item.tag
data modify entity @e[type=minecraft:item_frame,tag=SecondConsumable1,limit=1] Item.tag.slot set value 7
execute as @a[tag=Player1] at @s run function slashing_bee:start/macro_setup_consumable with entity @e[type=minecraft:item_frame,tag=SecondConsumable1,limit=1] Item.tag
data modify entity @e[type=minecraft:item_frame,tag=ThirdConsumable1,limit=1] Item.tag.slot set value 8
execute as @a[tag=Player1] at @s run function slashing_bee:start/macro_setup_consumable with entity @e[type=minecraft:item_frame,tag=ThirdConsumable1,limit=1] Item.tag

# Setup Equipment Player 2
# Armor
item replace entity @a[tag=Player2] armor.head from entity @e[type=armor_stand,limit=1,tag=Armor2] armor.head
execute as @a[tag=Player2] at @s run function slashing_bee:start/macro_setup_weapon with entity @e[type=armor_stand,limit=1,tag=Armor2] ArmorItems[3].tag
item replace entity @a[tag=Player2] armor.chest from entity @e[type=armor_stand,limit=1,tag=Armor2] armor.chest
execute as @a[tag=Player2] at @s run function slashing_bee:start/macro_setup_weapon with entity @e[type=armor_stand,limit=1,tag=Armor2] ArmorItems[2].tag
item replace entity @a[tag=Player2] armor.legs from entity @e[type=armor_stand,limit=1,tag=Armor2] armor.legs
execute as @a[tag=Player2] at @s run function slashing_bee:start/macro_setup_weapon with entity @e[type=armor_stand,limit=1,tag=Armor2] ArmorItems[1].tag
item replace entity @a[tag=Player2] armor.feet from entity @e[type=armor_stand,limit=1,tag=Armor2] armor.feet
execute as @a[tag=Player2] at @s run function slashing_bee:start/macro_setup_weapon with entity @e[type=armor_stand,limit=1,tag=Armor2] ArmorItems[0].tag
# Weapons
item replace entity @a[tag=Player2] hotbar.0 from entity @e[type=minecraft:item_frame,tag=PrimaryWeapon2,limit=1] container.0
execute as @a[tag=Player2] at @s run function slashing_bee:start/macro_setup_weapon with entity @e[type=minecraft:item_frame,tag=PrimaryWeapon2,limit=1] Item.tag
item replace entity @a[tag=Player2] hotbar.1 from entity @e[type=minecraft:item_frame,tag=SecondaryWeapon2,limit=1] container.0
execute as @a[tag=Player2] at @s run function slashing_bee:start/macro_setup_weapon with entity @e[type=minecraft:item_frame,tag=SecondaryWeapon2,limit=1] Item.tag
# Character
execute as @a[tag=Player2] at @s run function slashing_bee:start/macro_setup_character with entity @e[type=minecraft:item_frame,tag=Character2,limit=1] Item.tag
# Consumables
data modify entity @e[type=minecraft:item_frame,tag=FirstConsumable2,limit=1] Item.tag.slot set value 6
execute as @a[tag=Player2] at @s run function slashing_bee:start/macro_setup_consumable with entity @e[type=minecraft:item_frame,tag=FirstConsumable2,limit=1] Item.tag
data modify entity @e[type=minecraft:item_frame,tag=SecondConsumable2,limit=1] Item.tag.slot set value 7
execute as @a[tag=Player2] at @s run function slashing_bee:start/macro_setup_consumable with entity @e[type=minecraft:item_frame,tag=SecondConsumable2,limit=1] Item.tag
data modify entity @e[type=minecraft:item_frame,tag=ThirdConsumable2,limit=1] Item.tag.slot set value 8
execute as @a[tag=Player2] at @s run function slashing_bee:start/macro_setup_consumable with entity @e[type=minecraft:item_frame,tag=ThirdConsumable2,limit=1] Item.tag

# Setup Equipment Both
# Arrow
execute as @a[nbt={Inventory:[{id:"minecraft:bow"}]}] run item replace entity @s inventory.0 with arrow
execute as @a[nbt={Inventory:[{id:"minecraft:crossbow"}]}] run item replace entity @s inventory.0 with arrow

# Loops Start
function slashing_bee:process/loop_1t
function slashing_bee:process/loop_1s
function slashing_bee:process/money_converter

