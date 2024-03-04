
# Passive
attribute @s minecraft:generic.movement_speed modifier add 1-2-3-4-5 "golem" -0.02 add
attribute @s minecraft:generic.armor modifier add 1-2-3-4-5 "golem" 4 add
attribute @s minecraft:generic.armor_toughness modifier add 1-2-3-4-5 "golem" 2 add
attribute @s minecraft:generic.knockback_resistance modifier add 1-2-3-4-5 "golem" 2 add
# Ability
item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'[{"text":"Durcissement","italic":false,"color":"#0091FE"}]',Lore:['[{"text":"Compétence Rare","italic":false,"color":"dark_gray"}]','[{"text":""}]','[{"text":"Description :","italic":false,"color":"white"}]','[{"text":"Devient invulnérable pendant 4s","italic":false,"color":"dark_green"}]']},HideFlags:6,Unbreakable:1b,CustomModelData:703,function:"abilities/golem/harden"}
