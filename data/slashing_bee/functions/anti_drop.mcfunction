
execute as @e[type=item] at @s on origin run title @s times 0 0 20
execute as @e[type=item] at @s on origin run title @s subtitle {"text":"est interdit"}
execute as @e[type=item] at @s on origin run title @s title ["",{"text":"/!\\","bold":true,"color":"dark_red"},{"text":" Jeter un Item "},{"text":"/!\\","bold":true,"color":"dark_red"}]
execute as @e[type=item] at @s on origin run data modify entity @e[type=item,sort=nearest,limit=1] Owner set from entity @s UUID
execute as @e[type=item] run data modify entity @s PickupDelay set value 0s
execute as @e[type=item] at @s on origin run tp @e[type=item,sort=nearest,limit=1] @s
