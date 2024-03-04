
# Xp Earned
# Player 1
execute store result score @e[tag=Character1,limit=1] Xp_Earned run data get entity @e[tag=Character1,limit=1] Item.tag.xp
scoreboard players operation @e[tag=Character1,limit=1] Xp_Earned += @r[tag=Player1] Xp_Earned
execute store result entity @e[tag=Character1,limit=1] Item.tag.xp int 1 run scoreboard players get @e[tag=Character1,limit=1] Xp_Earned
execute as @e[tag=Character1,limit=1] run function slashing_bee:level_up/macro_level_up with entity @s Item.tag
# Player 2
execute store result score @e[tag=Character2,limit=1] Xp_Earned run data get entity @e[tag=Character2,limit=1] Item.tag.xp
scoreboard players operation @e[tag=Character2,limit=1] Xp_Earned += @r[tag=Player2] Xp_Earned
execute store result entity @e[tag=Character2,limit=1] Item.tag.xp int 1 run scoreboard players get @e[tag=Character2,limit=1] Xp_Earned
execute as @e[tag=Character2,limit=1] run function slashing_bee:level_up/macro_level_up with entity @s Item.tag
# Clear
scoreboard players set @e Xp_Earned 0

# More Money Characters Lvl3+
scoreboard players add @a[tag=More_Money] Money 100
tag @a remove More_Money

# Item Recover system 745 -57 223 
tp @e[type=item] 745 143 -303

# Reset
schedule clear slashing_bee:maps/summon_loop
time set 6000


# ----- Full clear -----
# Passives
execute as @a run attribute @s minecraft:generic.attack_damage modifier remove 1-2-3-4-5
execute as @a run attribute @s minecraft:generic.attack_speed modifier remove 1-2-3-4-5
execute as @a run attribute @s minecraft:generic.max_health modifier remove 1-2-3-4-5
execute as @a run attribute @s minecraft:generic.armor modifier remove 1-2-3-4-5
execute as @a run attribute @s minecraft:generic.armor_toughness modifier remove 1-2-3-4-5
execute as @a run attribute @s minecraft:generic.knockback_resistance modifier remove 1-2-3-4-5
execute as @a run attribute @s minecraft:generic.movement_speed modifier remove 1-2-3-4-5
tag @a remove Regen_15s
tag @a remove Regen_10s
tag @a remove Regen_5s
tag @a remove Regen_6s
tag @a remove Regen_3s
tag @a remove More_Energy1
tag @a remove More_Energy2
tag @a remove More_Energy3
tag @a remove ThiefPlusHalf
tag @a remove ThiefPlusOne
item replace entity @e[type=horse,tag=Centaur] horse.saddle with air
kill @e[type=horse,tag=Centaur]
kill @e[tag=Witch_Cat]
tag @a remove Centaur
tag @a remove Take_Off1
tag @a remove Take_Off2
tag @a remove Take_Off3
tag @a remove Can_Take_Off
tag @a remove Overheal
tag @a remove Blood_Thirst
tag @a remove Blood_Thirst1
tag @a remove Blood_Thirst2
tag @a remove Blood_Thirst3
tag @a remove Adv_entity_hurt_player
tag @a remove Only_Eye
tag @a remove Demonic_Fury
tag @a remove Demonic_Fury1
tag @a remove Demonic_Fury2
tag @a remove Demonic_Fury3
bossbar remove demonic_fury_level_player1
bossbar remove demonic_fury_level_player2
schedule clear slashing_bee:process/abilities/demon/demonic_fury_stop_detect
tag @a remove Flee
tag @a remove Flee1
tag @a remove Flee2
tag @a remove Flee3
tag @a remove Soul_Penetration
tag @a remove Arcane_Charge
tag @a remove Arcane_Charge1
tag @a remove Arcane_Charge2
tag @a remove Arcane_Charge3
tag @a remove Adv_player_hurt_entity
bossbar remove arcane_charge_player1
bossbar remove arcane_charge_player2
tag @a remove Bee_Reinforcement
tag @a remove Bee_Reinforcement1
tag @a remove Bee_Reinforcement2
tag @a remove Bee_Reinforcement3
tag @a remove Royal_Guard
kill @e[type=bee,tag=Bee_Soldier]
schedule clear slashing_bee:process/abilities/reine_abeille/bee_reinforcement_assignement
tag @a remove Petrification
# Abilities
schedule clear slashing_bee:process/abilities/humain/heal_loop
tag @a remove Add_Bolt1
tag @a remove Add_Bolt2
tag @a remove Heal
tag @a remove Rock_Prison
tag @a remove Frenzy
tag @a remove Frenzy_Up
tag @a remove Life_Arrow
tag @a remove Life_Arrow_Up
tag @a remove Potion
tag @a remove Potion_Up
tag @a remove Rock_Throw
tag @a remove Rock_Throw_Up
# Schedule clear
schedule clear slashing_bee:process/loop_1s
schedule clear slashing_bee:process/loop_1t

# Item effects clear
tag @a remove Youth_Amulet
tag @a remove Broken_Youth_Amulet
tag @a remove Broken_Power_Amulet
tag @a remove Anti_Regen_5s
tag @a remove Overheal_Amulet
tag @a remove Sky_Sword
tag @a remove Light_Mace
tag @a remove Death_Scythe
tag @a remove Life_Saber
tag @a remove Earth_Shield
tag @a remove Dark_Amulet
tag @a remove Royal_Stinger
tag @a remove Arcane_Helmet
tag @a remove Ice_Boots
tag @a remove Fire_Chestplate
tag @a remove Earth_Chestplate
scoreboard players reset @a Reload_Earth_Chestplate
tag @a remove Electric_Leggings
tag @a remove Life_Leggings
tag @a remove Death_Helmet
tag @a remove Light_Helmet
tag @a remove Dark_Chestplate
stopsound @a player minecraft:item.elytra.flying
tag @a remove Sky_Leggings
kill @e[type=armor_stand,tag=Hunter_Trap]
kill @e[type=armor_stand,tag=Explosive_Trap]
kill @e[type=armor_stand,tag=Springboard_Plant]
execute at @e[type=marker,tag=Cobweb] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace cobweb
kill @e[type=marker,tag=Cobweb]

# Entity Clear
execute as @e[type=minecraft:slime] run data merge entity @s {Size:0}
execute as @e[type=minecraft:magma_cube] run data merge entity @s {Size:0}
gamerule doMobLoot false
kill @e[team=Enemy]
gamerule doMobLoot true
kill @e[type=marker,tag=Mob_Summon_Marker]

# Player Reset
tag @a remove Dead
clear @a
effect clear @a
gamemode adventure @a
effect give @a instant_health infinite 0 true
effect give @a resistance infinite 10 true
effect give @a speed infinite 2 true
tp @a 737 74 -365
spawnpoint @a 737 74 -365
tp @r 757 74 -359
spawnpoint @r 757 74 -359
bossbar set energy_player_1 visible false
bossbar set energy_player_2 visible false
execute as @e[type=minecraft:item_frame] run data remove entity @s Item.tag.slot

# Retrieve player1 inventory
item replace entity @r[tag=Player1] inventory.0 from block 739 106 -363 container.0
item replace entity @r[tag=Player1] inventory.1 from block 739 106 -363 container.1
item replace entity @r[tag=Player1] inventory.2 from block 739 106 -363 container.2
item replace entity @r[tag=Player1] inventory.3 from block 739 106 -363 container.3
item replace entity @r[tag=Player1] inventory.4 from block 739 106 -363 container.4
item replace entity @r[tag=Player1] inventory.5 from block 739 106 -363 container.5
item replace entity @r[tag=Player1] inventory.6 from block 739 106 -363 container.6
item replace entity @r[tag=Player1] inventory.7 from block 739 106 -363 container.7
item replace entity @r[tag=Player1] inventory.8 from block 739 106 -363 container.8
item replace entity @r[tag=Player1] inventory.9 from block 739 106 -363 container.9
item replace entity @r[tag=Player1] inventory.10 from block 739 106 -363 container.10
item replace entity @r[tag=Player1] inventory.11 from block 739 106 -363 container.11
item replace entity @r[tag=Player1] inventory.12 from block 739 106 -363 container.12
item replace entity @r[tag=Player1] inventory.13 from block 739 106 -363 container.13
item replace entity @r[tag=Player1] inventory.14 from block 739 106 -363 container.14
item replace entity @r[tag=Player1] inventory.15 from block 739 106 -363 container.15
item replace entity @r[tag=Player1] inventory.16 from block 739 106 -363 container.16
item replace entity @r[tag=Player1] inventory.17 from block 739 106 -363 container.17
item replace entity @r[tag=Player1] inventory.18 from block 739 106 -363 container.18
item replace entity @r[tag=Player1] inventory.19 from block 739 106 -363 container.19
item replace entity @r[tag=Player1] inventory.20 from block 739 106 -363 container.20
item replace entity @r[tag=Player1] inventory.21 from block 739 106 -363 container.21
item replace entity @r[tag=Player1] inventory.22 from block 739 106 -363 container.22
item replace entity @r[tag=Player1] inventory.23 from block 739 106 -363 container.23
item replace entity @r[tag=Player1] inventory.24 from block 739 106 -363 container.24
item replace entity @r[tag=Player1] inventory.25 from block 739 106 -363 container.25
item replace entity @r[tag=Player1] inventory.26 from block 739 106 -363 container.26
item replace entity @r[tag=Player1] hotbar.0 from block 739 106 -364 container.0
item replace entity @r[tag=Player1] hotbar.1 from block 739 106 -364 container.1
item replace entity @r[tag=Player1] hotbar.2 from block 739 106 -364 container.2
item replace entity @r[tag=Player1] hotbar.3 from block 739 106 -364 container.3
item replace entity @r[tag=Player1] hotbar.4 from block 739 106 -364 container.4
item replace entity @r[tag=Player1] hotbar.5 from block 739 106 -364 container.5
item replace entity @r[tag=Player1] hotbar.6 from block 739 106 -364 container.6
item replace entity @r[tag=Player1] hotbar.7 from block 739 106 -364 container.7
item replace entity @r[tag=Player1] hotbar.8 from block 739 106 -364 container.8
item replace entity @r[tag=Player1] weapon.offhand from block 739 106 -364 container.9
item replace entity @r[tag=Player1] armor.head from block 739 106 -364 container.10
item replace entity @r[tag=Player1] armor.chest from block 739 106 -364 container.11
item replace entity @r[tag=Player1] armor.legs from block 739 106 -364 container.12
item replace entity @r[tag=Player1] armor.feet from block 739 106 -364 container.13


# Retrieve player2 inventory
item replace entity @r[tag=Player2] inventory.0 from block 740 106 -363 container.0
item replace entity @r[tag=Player2] inventory.1 from block 740 106 -363 container.1
item replace entity @r[tag=Player2] inventory.2 from block 740 106 -363 container.2
item replace entity @r[tag=Player2] inventory.3 from block 740 106 -363 container.3
item replace entity @r[tag=Player2] inventory.4 from block 740 106 -363 container.4
item replace entity @r[tag=Player2] inventory.5 from block 740 106 -363 container.5
item replace entity @r[tag=Player2] inventory.6 from block 740 106 -363 container.6
item replace entity @r[tag=Player2] inventory.7 from block 740 106 -363 container.7
item replace entity @r[tag=Player2] inventory.8 from block 740 106 -363 container.8
item replace entity @r[tag=Player2] inventory.9 from block 740 106 -363 container.9
item replace entity @r[tag=Player2] inventory.10 from block 740 106 -363 container.10
item replace entity @r[tag=Player2] inventory.11 from block 740 106 -363 container.11
item replace entity @r[tag=Player2] inventory.12 from block 740 106 -363 container.12
item replace entity @r[tag=Player2] inventory.13 from block 740 106 -363 container.13
item replace entity @r[tag=Player2] inventory.14 from block 740 106 -363 container.14
item replace entity @r[tag=Player2] inventory.15 from block 740 106 -363 container.15
item replace entity @r[tag=Player2] inventory.16 from block 740 106 -363 container.16
item replace entity @r[tag=Player2] inventory.17 from block 740 106 -363 container.17
item replace entity @r[tag=Player2] inventory.18 from block 740 106 -363 container.18
item replace entity @r[tag=Player2] inventory.19 from block 740 106 -363 container.19
item replace entity @r[tag=Player2] inventory.20 from block 740 106 -363 container.20
item replace entity @r[tag=Player2] inventory.21 from block 740 106 -363 container.21
item replace entity @r[tag=Player2] inventory.22 from block 740 106 -363 container.22
item replace entity @r[tag=Player2] inventory.23 from block 740 106 -363 container.23
item replace entity @r[tag=Player2] inventory.24 from block 740 106 -363 container.24
item replace entity @r[tag=Player2] inventory.25 from block 740 106 -363 container.25
item replace entity @r[tag=Player2] inventory.26 from block 740 106 -363 container.26
item replace entity @r[tag=Player2] hotbar.0 from block 740 106 -364 container.0
item replace entity @r[tag=Player2] hotbar.1 from block 740 106 -364 container.1
item replace entity @r[tag=Player2] hotbar.2 from block 740 106 -364 container.2
item replace entity @r[tag=Player2] hotbar.3 from block 740 106 -364 container.3
item replace entity @r[tag=Player2] hotbar.4 from block 740 106 -364 container.4
item replace entity @r[tag=Player2] hotbar.5 from block 740 106 -364 container.5
item replace entity @r[tag=Player2] hotbar.6 from block 740 106 -364 container.6
item replace entity @r[tag=Player2] hotbar.7 from block 740 106 -364 container.7
item replace entity @r[tag=Player2] hotbar.8 from block 740 106 -364 container.8
item replace entity @r[tag=Player2] weapon.offhand from block 740 106 -364 container.9
item replace entity @r[tag=Player2] armor.head from block 740 106 -364 container.10
item replace entity @r[tag=Player2] armor.chest from block 740 106 -364 container.11
item replace entity @r[tag=Player2] armor.legs from block 740 106 -364 container.12
item replace entity @r[tag=Player2] armor.feet from block 740 106 -364 container.13

# Scoreboard clear
scoreboard players set @a Heal_Duration 0

# Attribute clear
execute as @a run attribute @s minecraft:generic.movement_speed modifier remove f8bdda8d-cc36-424c-b655-398accc29008
execute as @a run attribute @s minecraft:generic.knockback_resistance modifier remove bcfee054-cefe-40ac-8dd8-0c70d172ef23

# Map Clear
schedule function slashing_bee:maps/forceload_clear 3s

# Setup Preparation room
schedule function slashing_bee:preparation/preparation_loop 1t
worldborder center 747 -363
worldborder set 300
#execute if entity @e[type=item] run function slashing_bee:preparation/item_recover/warning
execute if entity @e[type=item] run summon interaction 745 141 225.1 {Tags:["Item_Recover"],Rotation:[0f,0f],height:0.275f}
execute if entity @e[type=item] run summon text_display 745 141 225.1 {Tags:["Item_Recover"],text:'{"text":"[Récup]"}',Rotation:[0f,0f]}
execute if entity @e[type=item] run summon text_display 745 140.5 225.1 {Tags:["Item_Recover"],text:'[{"text":"Coût : "},{"text":"100","color":"gold"}]',Rotation:[0f,0f]}
# Summon
function slashing_bee:preparation/summon/chest/empty_chest_detect 
# Character Xp display
summon minecraft:text_display 724.1 80.9 -366 {Tags:["Character_Xp1"],Rotation:[-90.0f,0.0f],text:'{"entity":"@e[limit=1,tag=Character2]","nbt":"Item.tag.xp"}'}
summon minecraft:text_display 724.1 80.9 -372 {Tags:["Character_Xp2"],Rotation:[-90.0f,0.0f],text:'{"entity":"@e[limit=1,tag=Character2]","nbt":"Item.tag.xp"}'}
# Money Display Scoreboard
team join Player1 @a[tag=Player1]
team join Player2 @a[tag=Player2]
scoreboard objectives setdisplay sidebar.team.blue Money_Display_Player1
scoreboard objectives setdisplay sidebar.team.red Money_Display_Player2
# Map Select
execute positioned 746 68 -319 run function slashing_bee:preparation/map_select/reset

