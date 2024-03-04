
execute as @s[nbt={SelectedItem:{tag:{display:{Name:'[{"text":"Arbalète","italic":false,"color":"#00CC66"}]'}}}}] run function slashing_bee:process/crossbow/normal_crossbow
execute as @s[nbt={SelectedItem:{tag:{display:{Name:'[{"text":"Triple Arbalète","italic":false,"color":"#0091FE"}]'}}}}] run function slashing_bee:process/crossbow/multishot_crossbow
execute as @s[nbt={SelectedItem:{tag:{display:{Name:'[{"text":"Arbalète Perçante","italic":false,"color":"#0091FE"}]'}}}}] run function slashing_bee:process/crossbow/piercing_crossbow

scoreboard players set @s Crossbow 0
