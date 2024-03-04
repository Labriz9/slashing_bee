
scoreboard players set @s Reload_Life_Arrow 0

give @s[tag=!Life_Arrow_Up] tipped_arrow{CustomPotionColor:4704790,custom_potion_effects:[{id:"minecraft:luck",duration:60,amplifier:0b}],display:{Name:'[{"text":"Flèche de Vie","italic":false,"color":"#00CC66"}]',Lore:['{"text":"Récupère une flèche qui fait des dégats de vie de zone à l impact","italic":false,"color":"dark_green"}']},HideFlags:6}
give @s[tag=Life_Arrow_Up] tipped_arrow{CustomPotionColor:4704790,custom_potion_effects:[{id:"minecraft:luck",duration:60,amplifier:1b}],display:{Name:'[{"text":"Flèche de Vie Supérieure","italic":false,"color":"#00CC66"}]',Lore:['{"text":"Récupère une flèche qui fait des dégats de vie dans une grande zone à l impact","italic":false,"color":"dark_green"}']},HideFlags:6}

scoreboard players remove @s Energy 300
