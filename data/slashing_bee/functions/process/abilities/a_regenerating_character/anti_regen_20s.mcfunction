
execute as @a[tag=Anti_Regen_20s,tag=!Broken_Power_Amulet] run damage @s 1
execute as @a[tag=Broken_Power_Amulet,nbt={Inventory:[{Slot:-106b,tag:{weapon:"broken_power_amulet"}}]}] run damage @s 1

execute as @a[tag=Anti_Regen_20s] run schedule function slashing_bee:process/abilities/a_regenerating_character/anti_regen_20s 20s
