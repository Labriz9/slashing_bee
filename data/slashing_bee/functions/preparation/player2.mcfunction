
# Prevent old armor_stand to keep equipment
execute if entity @e[type=armor_stand,limit=1,tag=Armor1,nbt={ArmorItems:[{Count:1b}]}] run return 1
execute if entity @e[type=item_frame,limit=1,tag=PrimaryWeapon1,nbt={Item:{Count:1b}}] run return 1
execute if entity @e[type=item_frame,limit=1,tag=SecondaryWeapon1,nbt={Item:{Count:1b}}] run return 1
execute if entity @e[type=item_frame,limit=1,tag=Character1,nbt={Item:{Count:1b}}] run return 1
execute if entity @e[type=item_frame,limit=1,tag=FirstConsumable1,nbt={Item:{Count:1b}}] run return 1
execute if entity @e[type=item_frame,limit=1,tag=SecondConsumable1,nbt={Item:{Count:1b}}] run return 1
execute if entity @e[type=item_frame,limit=1,tag=ThirdConsumable1,nbt={Item:{Count:1b}}] run return 1

tag @s remove Player1
title @s times 0 0 20
title @s subtitle {"text":"choisi"}
title @s title {"text":"Joueur 2","color":"dark_red"}
tag @s add Player2
