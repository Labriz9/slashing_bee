
# Passive
attribute @s minecraft:generic.movement_speed modifier add 1-2-3-4-5 "spectre" 0.02 add
tag @s add Soul_Penetration
function slashing_bee:process/abilities/spectre/soul_penetration_detect
# Ability
item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'[{"text":"Intangible","italic":false,"bold":true,"color":"#B517ED"}]',Lore:['[{"text":"Compétence Epic","italic":false,"color":"dark_gray"}]','[{"text":""}]','[{"text":"Description :","italic":false,"color":"white"}]','[{"text":"Devient momentanément intangible et peut se téléporter à son allié","italic":false,"color":"dark_green"}]']},HideFlags:6,Unbreakable:1b,CustomModelData:704,function:"abilities/spectre/intangible"}
