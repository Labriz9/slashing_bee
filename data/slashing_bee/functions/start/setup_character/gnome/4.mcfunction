
# Passive
attribute @s minecraft:generic.max_health modifier add 1-2-3-4-5 "gnome" -6 add
attribute @s minecraft:generic.attack_damage modifier add 1-2-3-4-5 "gnome" -1.5 add
tag @s add More_Energy3
tag @s add More_Money
# Ability
item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'[{"text":"Prison rocheuse","italic":false,"color":"white"}]',Lore:['[{"text":"Compétence Commune","italic":false,"color":"dark_gray"}]','[{"text":""}]','[{"text":"Description :","italic":false,"color":"white"}]','[{"text":"Crée une prison de roche immobilisant et faisant des dégats aux ennemis visés","italic":false,"color":"dark_green"}]']},HideFlags:6,Unbreakable:1b,CustomModelData:702,function:"abilities/gnome/rock_prison"}
