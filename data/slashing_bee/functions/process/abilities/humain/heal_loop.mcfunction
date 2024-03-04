
execute as @a[tag=Heal,scores={Heal_Duration=..5}] at @s run particle happy_villager ~ ~1 ~ 0.2 0.2 0.2 0 10
scoreboard players add @a[tag=Heal,scores={Heal_Duration=..5}] Heal_Duration 1
execute as @a[tag=Heal,scores={Heal_Duration=6..}] run function slashing_bee:process/abilities/humain/heal_end

execute if entity @e[tag=Heal] run schedule function slashing_bee:process/abilities/humain/heal_loop 1s
