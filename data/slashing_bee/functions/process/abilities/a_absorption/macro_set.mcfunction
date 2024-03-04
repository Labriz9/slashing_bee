
#   effect absorption
#   $(plus) + input/4
#   * 4 
#   damage
#   $(minus) - [(input/4 + 1) * 4 - input]

effect clear @s absorption
$effect give @s absorption infinite $(plus) true
$damage @s $(minus) generic
