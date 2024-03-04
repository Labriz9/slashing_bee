
# Passive
# + 0.03 (30%) from sprinting
summon minecraft:horse ~ ~1 ~ {Tame:1b,Attributes:[{Base:0.15d,Name:"minecraft:generic.movement_speed"}],SaddleItem:{id:"minecraft:saddle",Count:1b},Variant:2,Tags:["Centaur"],NoAI:1b,DeathLootTable:"slashing_bee:entities/other/empty"}
ride @s mount @e[type=horse,tag=Centaur,limit=1,sort=nearest]
tag @s add Centaur
function slashing_bee:process/abilities/centaure/horse_damage_loop
# Ability
item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'[{"text":"Ruée","italic":false,"color":"#00CC66"}]',Lore:['[{"text":"Compétence Inhabituelle","italic":false,"color":"dark_gray"}]','[{"text":""}]','[{"text":"Description :","italic":false,"color":"white"}]','[{"text":"Augmente momentanément sa vitesse pour faire des dégats aux ennemis sur son chemin","italic":false,"color":"dark_green"}]']},HideFlags:6,Unbreakable:1b,CustomModelData:702,function:"abilities/centaure/rush"}
