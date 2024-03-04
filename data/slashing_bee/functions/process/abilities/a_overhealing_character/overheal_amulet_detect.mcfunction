
execute as @a[tag=Overheal_Amulet] store result score @s Overheal_Max_Health run attribute @s generic.max_health get
execute as @a[tag=Overheal_Amulet] store result score @s Overheal_Current_Health run data get entity @s Health
execute as @a[tag=Overheal_Amulet,nbt={active_effects:[{id:"minecraft:regeneration"}],Inventory:[{Slot:-106b,tag:{weapon:"overheal_amulet"}}]}] if score @s Overheal_Max_Health = @s Overheal_Current_Health run function slashing_bee:process/abilities/a_overhealing_character/overheal_resolve

execute as @a[tag=Overheal_Amulet] run schedule function slashing_bee:process/abilities/a_overhealing_character/overheal_amulet_detect 1s
