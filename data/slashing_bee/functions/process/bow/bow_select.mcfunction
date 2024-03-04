
execute as @s[nbt={SelectedItem:{tag:{display:{Name:'[{"text":"Arc","italic":false,"color":"white"}]'}}}}] run function slashing_bee:process/bow/common_bow
execute as @s[nbt={SelectedItem:{tag:{display:{Name:'[{"text":"Arc Puissant","italic":false,"color":"#0091FE"}]'}}}}] run function slashing_bee:process/bow/rare_bow
execute as @s[nbt={SelectedItem:{tag:{display:{Name:'[{"text":"Arc surchargé","italic":false,"bold":true,"color":"#B517ED"}]'}}}}] run function slashing_bee:process/bow/electric_bow/use

scoreboard players set @s Bow 0
