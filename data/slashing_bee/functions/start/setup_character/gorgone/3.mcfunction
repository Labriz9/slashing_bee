
# Passive
attribute @s minecraft:generic.movement_speed modifier add 1-2-3-4-5 "gorgone" 0.02 add
tag @s add Petrification
function slashing_bee:process/abilities/gorgone/petrification_detect
tag @s add More_Money
# Ability
item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'[{"text":"Venin","italic":false,"bold":true,"color":"#B517ED"}]',Lore:['[{"text":"Compétence Epic","italic":false,"color":"dark_gray"}]','[{"text":""}]','[{"text":"Description :","italic":false,"color":"white"}]','[{"text":"Place une flaque infligeant des dégats de mort aux ennemis","italic":false,"color":"dark_green"}]']},HideFlags:6,Unbreakable:1b,CustomModelData:704,function:"abilities/gorgone/venom"}
