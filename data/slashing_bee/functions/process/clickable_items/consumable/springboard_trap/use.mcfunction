
item replace entity @s weapon.mainhand with air
summon armor_stand ~ ~1 ~ {Invulnerable:1b,Invisible:1b,Tags:["Springboard_Trap"],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:8204}}]}

function slashing_bee:process/clickable_items/consumable/springboard_trap/loop
