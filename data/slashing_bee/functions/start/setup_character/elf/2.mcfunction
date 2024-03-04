
# Passive
attribute @s minecraft:generic.movement_speed modifier add 1-2-3-4-5 "elf" 0.03 add
# Ability
tag @s add Life_Arrow
item replace entity @s hotbar.2 with tipped_arrow{CustomPotionColor:4704790,custom_potion_effects:[{id:"minecraft:luck",duration:60,amplifier:0b}],display:{Name:'[{"text":"Flèche de Vie","italic":false,"color":"#00CC66"}]',Lore:['{"text":"Récupère une flèche qui fait des dégats de vie de zone à l impact","italic":false,"color":"dark_green"}']},HideFlags:6}
function slashing_bee:process/abilities/elf/life_arrow_detect
