
schedule function slashing_bee:process/abilities/a_winged_character/take_off_interrupt 4t replace

scoreboard players add @s Take_Off_Charge 1
execute as @s[scores={Take_Off_Charge=60..}] run function slashing_bee:process/abilities/a_winged_character/take_off_resolve
