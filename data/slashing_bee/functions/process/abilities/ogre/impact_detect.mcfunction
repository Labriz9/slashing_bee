
execute as @a[tag=Impact,tag=!Impact_Up,nbt={OnGround:1b}] at @s run function slashing_bee:process/abilities/ogre/impact_resolve
execute as @a[tag=Impact_Up,nbt={OnGround:1b}] at @s run function slashing_bee:process/abilities/ogre/impact_up_resolve
effect give @a[tag=Impact] minecraft:resistance 1 255 true

execute if entity @a[tag=Impact,nbt={OnGround:0b}] run schedule function slashing_bee:process/abilities/ogre/impact_detect 1t
