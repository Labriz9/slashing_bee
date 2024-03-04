
# Player selection
execute unless entity @a[tag=Player1] as @r[distance=..0.5,x=736,y=78,z=-365.5] at @s run function slashing_bee:preparation/player1
execute unless entity @a[tag=Player2] as @r[distance=..0.5,x=736,y=78,z=-371.5] at @s run function slashing_bee:preparation/player2

# Tp in
execute as @a[distance=..0.5,x=736,y=78,z=-365.5,tag=Player1] at @s run tp @s ~-2 ~ ~
execute as @a[distance=..0.5,x=736,y=78,z=-371.5,tag=Player2] at @s run tp @s ~-2 ~ ~
# Tp back
execute unless entity @e[type=item,distance=..2,x=365.5,y=-60,z=222.5] as @a[distance=..0.5,x=735,y=78,z=-365.5] at @s run tp @s ~2 ~ ~
execute unless entity @e[type=item,distance=..2,x=361.5,y=-60,z=222.5] as @a[distance=..0.5,x=735,y=78,z=-371.5] at @s run tp @s ~2 ~ ~

# Item_Recover
execute as @e[type=minecraft:interaction,tag=Item_Recover] at @s on target run function slashing_bee:preparation/item_recover/use

# Summon
execute as @e[type=minecraft:interaction,tag=Normal_Summon_Start] at @s on target run function slashing_bee:preparation/summon/start
execute as @e[type=minecraft:interaction,tag=Normal_Summon_Add] at @s on target run function slashing_bee:preparation/summon/normal_add
execute as @e[type=minecraft:interaction,tag=Normal_Summon_Reduce] at @s on target run function slashing_bee:preparation/summon/normal_reduce
execute as @e[type=minecraft:interaction,tag=Special_Summon_Start] at @s on target run function slashing_bee:preparation/summon/special_start
execute as @e[type=minecraft:interaction,tag=Special_Summon_Add] at @s on target run function slashing_bee:preparation/summon/special_add
execute as @e[type=minecraft:interaction,tag=Special_Summon_Reduce] at @s on target run function slashing_bee:preparation/summon/special_reduce
# 1 Player max
execute unless entity @a[tag=Summoning] positioned 750 72 -407 run tag @p[distance=..15] add Summoning
execute positioned 750 72 -407 unless entity @e[type=item,distance=..15] unless data block 744 70 -407 Items[0].Count unless data block 755 70 -406 Items[0].Count run tag @a remove Summoning
execute positioned 750 72 -407 unless entity @e[type=item,distance=..15] run tp @a[tag=Summoning,distance=15..] 750 72 -407
execute if entity @a[tag=Summoning] positioned 750 72 -407 run tp @a[tag=!Summoning,distance=..15] 747 73 -381



# Item Frame Protection
execute as @e[type=minecraft:item_frame] run data modify entity @s Invulnerable set value 1
execute as @e[type=minecraft:item_frame,nbt={Item:{Count:1b}}] run data modify entity @s Invulnerable set value 0

# Character xp display
data merge entity @e[type=minecraft:text_display,tag=Character_Xp1,limit=1] {text:'{"entity":"@e[limit=1,tag=Character1]","nbt":"Item.tag.xp"}'}
data merge entity @e[type=minecraft:text_display,tag=Character_Xp2,limit=1] {text:'{"entity":"@e[limit=1,tag=Character2]","nbt":"Item.tag.xp"}'}

# Carved pumpkin placement
execute as @a[nbt={SelectedItem:{id:"minecraft:carved_pumpkin",Count:1b}},x=723,y=79,z=-368.5,distance=..4] at @s unless data entity @e[type=minecraft:armor_stand,sort=nearest,limit=1] ArmorItems[3].Count run tag @e[type=minecraft:armor_stand,sort=nearest,limit=1] add Carved_Pumpkin_Placement
execute as @a[nbt={SelectedItem:{id:"minecraft:carved_pumpkin",Count:1b}},x=723,y=79,z=-368.5,distance=..4] at @s unless data entity @e[type=minecraft:armor_stand,sort=nearest,limit=1] ArmorItems[3].Count run item replace entity @e[type=armor_stand,limit=1,sort=nearest] armor.head from entity @s weapon.mainhand
execute as @a[nbt={SelectedItem:{id:"minecraft:carved_pumpkin",Count:1b}},x=723,y=79,z=-368.5,distance=..4] at @s if entity @e[type=minecraft:armor_stand,sort=nearest,limit=1,tag=Carved_Pumpkin_Placement] run item replace entity @s weapon.mainhand with air
tag @e[type=minecraft:armor_stand,tag=Carved_Pumpkin_Placement] remove Carved_Pumpkin_Placement

# Money Display
scoreboard players operation Or Money_Display_Player1 = @a[tag=Player1,limit=1] Money 
scoreboard players operation Clé_élite Money_Display_Player1 = @a[tag=Player1,limit=1] Elite_Key
scoreboard players operation Or Money_Display_Player2 = @a[tag=Player2,limit=1] Money 
scoreboard players operation Clé_élite Money_Display_Player2 = @a[tag=Player2,limit=1] Elite_Key

# Map Select
execute as @e[type=minecraft:interaction,tag=Map_Select_Start] at @s on target run function slashing_bee:start
execute as @e[type=minecraft:interaction,tag=Map_Select_Add] at @s on target run function slashing_bee:preparation/map_select/add
execute as @e[type=minecraft:interaction,tag=Map_Select_Reduce] at @s on target run function slashing_bee:preparation/map_select/reduce

# Food Level
effect give @a[scores={Food_Level=..19}] saturation 1 0 true
effect give @a[nbt=!{foodSaturationLevel:0.0f}] hunger 1 39 true

schedule function slashing_bee:preparation/preparation_loop 1t
