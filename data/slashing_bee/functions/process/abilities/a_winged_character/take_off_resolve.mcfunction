
effect give @s[tag=Take_Off1] levitation 1 20 true
effect give @s[tag=Take_Off2] levitation 1 35 true
effect give @s[tag=Take_Off3] levitation 1 50 true
schedule function slashing_bee:process/abilities/a_winged_character/take_off_resolve_clear 5t

scoreboard players set @a Take_Off_Charge 0
