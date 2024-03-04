
# Passive
attribute @s minecraft:generic.movement_speed modifier add 1-2-3-4-5 "treant" -0.02 add
tag @s add Regen_20s
function slashing_bee:process/abilities/a_regenerating_character/regen_20s
tag @s add Overheal
schedule function slashing_bee:process/abilities/a_overhealing_character/overheal_detect 1s
tag @s add More_Money
# Ability
item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'[{"text":"Croissance Supérieure","italic":false,"color":"white"}]',Lore:['[{"text":"Compétence Commune","italic":false,"color":"dark_gray"}]','[{"text":""}]','[{"text":"Description :","italic":false,"color":"white"}]','[{"text":"Gagne 2 coeur d absorption de durée infinie","italic":false,"color":"dark_green"}]']},HideFlags:6,Unbreakable:1b,CustomModelData:703,function:"abilities/treant/grow_up"}
