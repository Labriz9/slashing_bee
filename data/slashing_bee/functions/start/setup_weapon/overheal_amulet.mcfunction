
tag @s add Overheal_Amulet
tag @s add Overheal
schedule function slashing_bee:process/abilities/a_overhealing_character/overheal_amulet_detect 1s

# Health:20.0f bug for Max health < 20 (ex : driade)
damage @s 1
effect give @s instant_health 1 0 true
