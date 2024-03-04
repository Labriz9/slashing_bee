
# Passive
attribute @s minecraft:generic.max_health modifier add 1-2-3-4-5 "goblin" -6 add
tag @s add ThiefPlusOne
tag @s add ThiefPlusHalf
function slashing_bee:process/abilities/goblin/thief
tag @s add More_Money
# Ability
item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'[{"text":"Frénésie","italic":false,"color":"#00CC66"}]',Lore:['[{"text":"Compétence Inhabituelle","italic":false,"color":"dark_gray"}]','[{"text":""}]','[{"text":"Description :","italic":false,"color":"white"}]','[{"text":"Augmente la vitesse,","italic":false,"color":"dark_green"}]','[{"text":"    gagner de l or rallonge l effet","italic":false,"color":"dark_green"}]']},HideFlags:6,Unbreakable:1b,CustomModelData:702,function:"abilities/goblin/frenzy"}
