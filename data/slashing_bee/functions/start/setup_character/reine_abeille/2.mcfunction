
# Passive
tag @s add Bee_Reinforcement
tag @s add Bee_Reinforcement2
schedule function slashing_bee:process/abilities/reine_abeille/bee_reinforcement_10s 10s
schedule function slashing_bee:process/abilities/reine_abeille/bee_reinforcement_assignement 1s
tag @s add Royal_Guard
schedule function slashing_bee:process/abilities/reine_abeille/royal_guard 1s
# Ability
item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'[{"text":"Convocation royale","italic":false,"bold":true,"color":"#FEAF00"}]',Lore:['[{"text":"Compétence Légendaire","italic":false,"color":"dark_gray"}]','[{"text":""}]','[{"text":"Description :","italic":false,"color":"white"}]','[{"text":"Appelle des abeilles soldats","italic":false,"color":"dark_green"}]']},HideFlags:6,Unbreakable:1b,CustomModelData:705,function:"abilities/reine_abeille/royal_summons"}
