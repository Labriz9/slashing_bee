
# Passive
attribute @s minecraft:generic.max_health modifier add 1-2-3-4-5 "geant" 20 add
effect give @s instant_health 1 10 true
tag @s add More_Money
# Ability
item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'[{"text":"Clap ! Supérieur","italic":false,"color":"#00CC66"}]',Lore:['[{"text":"Compétence Inhabituelle","italic":false,"color":"dark_gray"}]','[{"text":""}]','[{"text":"Description :","italic":false,"color":"white"}]','[{"text":"Après un temps,","italic":false,"color":"dark_green"}]','[{"text":"    crée une onde de choc vers l avant qui fait des dégats importants","italic":false,"color":"dark_green"}]']},HideFlags:6,Unbreakable:1b,CustomModelData:702,function:"abilities/geant/clap_up"}
