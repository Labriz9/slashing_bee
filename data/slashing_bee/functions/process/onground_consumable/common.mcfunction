
kill @s
particle minecraft:dust 1 1 1 1 ~ ~3 ~ 0 1.5 0 0 40

execute store result score random_consumable Variables run random value 1..3
execute if score random_consumable Variables matches 1 run summon item ~ ~ ~ {Item:{id:"bread",Count:10b,tag:{display:{Name:'[{"text":"Pain","italic":false,"color":"white"}]',Lore:['[{"text":"Consommable Commun","italic":false,"color":"dark_gray"}]']}}}}
execute if score random_consumable Variables matches 2 run summon item ~ ~ ~ {Item:{id:"carrot_on_a_stick",Count:1b,tag:{display:{Name:'[{"text":"Piège de Chasseur","italic":false,"color":"white"}]',Lore:['[{"text":"Consommable Commun","italic":false,"color":"dark_gray"}]','[{"text":""}]','[{"text":"Compétence :","italic":false,"color":"white"}]','[{"text":"Immobilise un ennemi marchant dessus et lui fait des dégats","italic":false,"color":"dark_green"}]']},HideFlags:6,Unbreakable:1b,CustomModelData:8101,function:"clickable_items/consumable/hunter_trap/use"}}}
execute if score random_consumable Variables matches 3 run summon item ~ ~ ~ {Item:{id:"carrot_on_a_stick",Count:1b,tag:{display:{Name:'[{"text":"Toiles d araignées","italic":false,"color":"white"}]',Lore:['[{"text":"Consommable Commun","italic":false,"color":"dark_gray"}]','[{"text":""}]','[{"text":"Compétence :","italic":false,"color":"white"}]','[{"text":"Ralentit les ennemis marchant à travers (sauf les araignées)","italic":false,"color":"dark_green"}]']},HideFlags:6,Unbreakable:1b,CustomModelData:8102,function:"clickable_items/consumable/cobweb/use"}}}
