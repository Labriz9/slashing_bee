
$execute as @a[tag=Arcane_Charge,nbt={UUID:$(Owner)},scores={Arcane_Charge=..9}] run scoreboard players add @s Arcane_Charge 1
$execute as @a[tag=Arcane_Charge,nbt={UUID:$(Owner)},tag=Player1] store result bossbar arcane_charge_player1 value run scoreboard players get @s Arcane_Charge
$execute as @a[tag=Arcane_Charge,nbt={UUID:$(Owner)},tag=Player2] store result bossbar arcane_charge_player2 value run scoreboard players get @s Arcane_Charge
