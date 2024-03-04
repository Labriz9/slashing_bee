
execute as @a[tag=Blood_Thirst1,scores={Blood_Thirst=10..}] at @s run function slashing_bee:process/abilities/vampire/blood_thirst_resolve
execute as @a[tag=Blood_Thirst2,scores={Blood_Thirst=8..}] at @s run function slashing_bee:process/abilities/vampire/blood_thirst_resolve
execute as @a[tag=Blood_Thirst3,scores={Blood_Thirst=6..}] at @s run function slashing_bee:process/abilities/vampire/blood_thirst_resolve

execute if entity @a[tag=Blood_Thirst] run schedule function slashing_bee:process/abilities/vampire/blood_thirst_detect 1s
