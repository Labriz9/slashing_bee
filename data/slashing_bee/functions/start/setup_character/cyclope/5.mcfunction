
# Passive
attribute @s minecraft:generic.attack_damage modifier add 1-2-3-4-5 "cyclope" 9 add
tag @s add Adv_entity_hurt_player
tag @s add Only_Eye
tag @s add More_Money
# Ability
tag @s add Rock_Throw
tag @s add Rock_Throw_Up
item replace entity @s hotbar.2 with snowball{display:{Name:'[{"text":"Rocher Supérieur","italic":false,"color":"#0091FE"}]',Lore:['[{"text":"Compétence Rare","italic":false,"color":"dark_gray"}]','[{"text":""}]','[{"text":"Description :","italic":false,"color":"white"}]','[{"text":"Lance un rocher qui inflige des dégats de zone à l impact","italic":false,"color":"dark_green"}]']},Cyclops:1b,CustomModelData:2}
function slashing_bee:process/abilities/cyclope/rock_throw_detect
