
# Passive
execute as @s[tag=Player1] run data modify storage minecraft:setup wings_player1 set from entity @e[tag=Armor1,limit=1] ArmorItems[2]
execute as @s[tag=Player1] run function slashing_bee:start/macro_set_wings with storage minecraft:setup wings_player1
execute as @s[tag=Player2] run data modify storage minecraft:setup wings_player2 set from entity @e[tag=Armor2,limit=1] ArmorItems[2]
execute as @s[tag=Player2] run function slashing_bee:start/macro_set_wings with storage minecraft:setup wings_player2
tag @s add Can_Take_Off
tag @s add Take_Off1
function slashing_bee:process/abilities/a_winged_character/take_off_detect
attribute @s minecraft:generic.max_health modifier add 1-2-3-4-5 "fee" -6 add
tag @s add More_Energy2
function slashing_bee:process/abilities/a_regenerating_character/regen_10s
# Ability
item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'[{"text":"Dispersion de Poussière de fée","italic":false,"bold":true,"color":"#B517ED"}]',Lore:['[{"text":"Compétence Epic","italic":false,"color":"dark_gray"}]','[{"text":""}]','[{"text":"Description :","italic":false,"color":"white"}]','[{"text":"Disperse de la magie volatile qui fait léviter les ennemis","italic":false,"color":"dark_green"}]']},HideFlags:6,Unbreakable:1b,CustomModelData:704,function:"abilities/fee/fairy_dust"}
