
# Clean Arena
kill @e[type=arrow,nbt={inGround:1b}]

# Bow
execute as @a[scores={Bow=1..}] at @s run function slashing_bee:process/bow/bow_select
# Crossbow
execute as @a[scores={Crossbow=1..}] at @s run function slashing_bee:process/crossbow/crossbow_select

# Click
execute as @a[scores={Click=1..}] at @s run function slashing_bee:process/macro_click with entity @s SelectedItem.tag

# Mob_Health
execute as @e[team=Enemy] store result score @s Mob_Health run data get entity @s Health

# OnGround Consumable
execute as @e[type=item,nbt={Item:{id:"minecraft:oak_planks"}}] at @s run function slashing_bee:process/onground_consumable/macro_rarity_get with entity @s Item.tag

schedule function slashing_bee:process/loop_1t 1t
