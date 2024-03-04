
execute as @a[tag=Charge,nbt={OnGround:1b}] at @s run function slashing_bee:process/abilities/minotaure/charge_resolve
effect give @a[tag=Charge] minecraft:resistance 1 5 true

execute if entity @a[tag=Charge,nbt={OnGround:0b}] run schedule function slashing_bee:process/abilities/minotaure/charge_detect 1t
