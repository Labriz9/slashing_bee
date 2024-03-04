
execute as @a[tag=Overheal] store result score @s Overheal_Max_Health run attribute @s generic.max_health get
execute as @a[tag=Overheal] store result score @s Overheal_Current_Health run data get entity @s Health
execute as @a[tag=Overheal,nbt={active_effects:[{id:"minecraft:regeneration"}]}] if score @s Overheal_Max_Health = @s Overheal_Current_Health run function slashing_bee:process/abilities/a_overhealing_character/overheal_resolve

execute as @a[tag=Overheal] run schedule function slashing_bee:process/abilities/a_overhealing_character/overheal_detect 1s
