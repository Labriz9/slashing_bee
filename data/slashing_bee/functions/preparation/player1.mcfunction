
# Prevent old armor_stand to keep equipment
execute if entity @e[type=armor_stand,limit=1,tag=Armor2,nbt={ArmorItems:[{Count:1b}]}] run return 1
execute if entity @e[type=item_frame,limit=1,tag=PrimaryWeapon2,nbt={Item:{Count:1b}}] run return 1
execute if entity @e[type=item_frame,limit=1,tag=SecondaryWeapon2,nbt={Item:{Count:1b}}] run return 1
execute if entity @e[type=item_frame,limit=1,tag=Character2,nbt={Item:{Count:1b}}] run return 1
execute if entity @e[type=item_frame,limit=1,tag=FirstConsumable2,nbt={Item:{Count:1b}}] run return 1
execute if entity @e[type=item_frame,limit=1,tag=SecondConsumable2,nbt={Item:{Count:1b}}] run return 1
execute if entity @e[type=item_frame,limit=1,tag=ThirdConsumable2,nbt={Item:{Count:1b}}] run return 1

tag @s remove Player2
title @s times 0 0 20
title @s subtitle {"text":"choisi"}
title @s title {"text":"Joueur 1","color":"dark_blue"}
tag @s add Player1 
