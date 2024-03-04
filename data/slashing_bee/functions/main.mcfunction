
# Anti Drop
execute if entity @e[type=item] run function slashing_bee:anti_drop

# Money convert
execute as @a store result score @s New_Money run clear @s gold_nugget
execute as @a[scores={New_Money=1..}] run scoreboard players operation @s Convert_Money += @s New_Money
execute as @a[scores={Convert_Money=1..}] at @s run function slashing_bee:process/money_converter
# Goblin bonus
execute as @a[scores={Thief=1..}] at @s run function slashing_bee:process/abilities/goblin/thief

# Elite_Key convert
execute as @a store result score @s New_Elite_Key run clear @s gold_ingot
execute as @a[scores={New_Elite_Key=1..}] run scoreboard players operation @s Convert_Elite_Key += @s New_Elite_Key
execute as @a[scores={Convert_Elite_Key=1..}] at @s run function slashing_bee:process/elite_key_converter
