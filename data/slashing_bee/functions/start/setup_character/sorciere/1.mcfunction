
# Passive
summon minecraft:cat ~ ~1 ~ {variant:"minecraft:black",Tags:["Witch_Cat"],Invulnerable:1b,DeathLootTable:"slashing_bee:entities/other/empty"}
data modify entity @e[tag=Witch_Cat,limit=1,sort=nearest] Owner set from entity @s UUID
scoreboard players set @e[tag=Witch_Cat,limit=1,sort=nearest] Cat_Level 1
schedule function slashing_bee:process/abilities/sorciere/witch_cat_loop 15s
# Ability
tag @s add Potion
item replace entity @s hotbar.2 with splash_potion{display:{Name:'[{"text":"Potion de Soin instantané","italic":false,"color":"#0091FE"}]',Lore:['[{"text":"Compétence Rare","italic":false,"color":"dark_gray"}]','[{"text":""}]','[{"text":"Description :","italic":false,"color":"white"}]','[{"text":"Rend 4pv au maximum","italic":false,"color":"dark_green"}]']},HideFlags:32,CustomPotionColor:16711680,custom_potion_effects:[{id:instant_health,duration:1,amplifier:0}],Witch:1b}
function slashing_bee:process/abilities/sorciere/potion_detect
