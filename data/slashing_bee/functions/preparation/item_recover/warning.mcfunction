
execute positioned 356 -58 223 if entity @e[type=item,distance=..0.1] run tellraw @a ["",{"text":"/!\\ Attention /!\\","underlined":true,"color":"dark_red"},{"text":" : Des items pouvant être "},{"text":"récupérés","underlined":true},{"text":" sont sur le point de disparaitre définitivement"}]
execute positioned 356 -58 223 if entity @e[type=item,distance=..0.1] run return 0

schedule function slashing_bee:preparation/item_recover/warning 1s
