
# Passive
attribute @s minecraft:generic.max_health modifier add 1-2-3-4-5 "dryad" -6 add
tag @s add Regen_30s
function slashing_bee:process/abilities/a_regenerating_character/regen_30s
# Ability
item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'[{"text":"Ronces","italic":false,"color":"#0091FE"}]',Lore:['[{"text":"Compétence Rare","italic":false,"color":"dark_gray"}]','[{"text":""}]','[{"text":"Description :","italic":false,"color":"white"}]','[{"text":"Crée des ronces qui immobilisent et font des dégats aux ennemis proches","italic":false,"color":"dark_green"}]']},HideFlags:6,Unbreakable:1b,CustomModelData:703,function:"abilities/dryade/brambles"}
