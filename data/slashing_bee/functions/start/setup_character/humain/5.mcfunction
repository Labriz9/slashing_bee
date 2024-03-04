
# Passive
attribute @s minecraft:generic.attack_speed modifier add 1-2-3-4-5 "humain" 3 add
tag @s add More_Money
# Ability
item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'[{"text":"Soins Supérieurs","italic":false,"color":"white"}]',Lore:['[{"text":"Compétence Commune","italic":false,"color":"dark_gray"}]','[{"text":""}]','[{"text":"Description :","italic":false,"color":"white"}]','[{"text":"Se rend immobile pour se régénérer","italic":false,"color":"dark_green"}]']},HideFlags:6,Unbreakable:1b,CustomModelData:701,function:"abilities/humain/heal_up"}
