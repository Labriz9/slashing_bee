
execute as @a[tag=Can_Take_Off,scores={Take_Off=1..},nbt={OnGround:1b}] run function slashing_bee:process/abilities/a_winged_character/take_off_charge
scoreboard players set @a Take_Off 0

execute as @a[tag=Can_Take_Off] run schedule function slashing_bee:process/abilities/a_winged_character/take_off_detect 1t
