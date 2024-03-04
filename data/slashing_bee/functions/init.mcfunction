
# ----- Scoreboards -----
scoreboard objectives add Health health
scoreboard objectives setdisplay below_name Health
scoreboard objectives add Mob_Health dummy
scoreboard objectives add Click minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add Variables dummy
scoreboard objectives add Dead deathCount
scoreboard objectives add Bow minecraft.used:minecraft.bow
scoreboard objectives add Crossbow minecraft.used:minecraft.crossbow
scoreboard objectives add Energy dummy
scoreboard objectives add LifeTime dummy
scoreboard objectives add Ennemis dummy

# Preparation Room
# Summon Setup
scoreboard objectives add Summon_Number dummy
scoreboard players set normal_summon_number Variables 5
scoreboard players set special_summon_number Variables 1
# Money Display
team add Player1
team modify Player1 color blue
scoreboard objectives add Money_Display_Player1 dummy "Monnaie"
scoreboard players display numberformat Or Money_Display_Player1 styled {"color":"gold"}
scoreboard players display numberformat Clé_élite Money_Display_Player1 styled {"bold":true,"color":"#B500ED"}
team add Player2
team modify Player2 color red
scoreboard objectives add Money_Display_Player2 dummy "Monnaie"
scoreboard players display numberformat Or Money_Display_Player2 styled {"color":"gold"}
scoreboard players display numberformat Clé_élite Money_Display_Player2 styled {"bold":true,"color":"#B500ED"}
# Map Select
scoreboard players set map_number Variables 1
# Food Level
scoreboard objectives add Food_Level food
scoreboard players set @a Food_Level 20

# Money
scoreboard objectives add New_Money dummy
scoreboard objectives add Convert_Money dummy
scoreboard objectives add Money dummy
# Elite_key
scoreboard objectives add New_Elite_Key dummy
scoreboard objectives add Convert_Elite_Key dummy
scoreboard objectives add Elite_Key dummy
# Xp
scoreboard objectives add Xp_Earned dummy
scoreboard players set xp_needed_level_1 Variables 500
scoreboard players set xp_needed_level_2 Variables 1000
scoreboard players set xp_needed_level_3 Variables 2500
scoreboard players set xp_needed_level_4 Variables 5000
# Reload
scoreboard objectives add Reload_Rare_Bow dummy
scoreboard objectives add Reload_Multishot_Crossbow dummy
scoreboard objectives add Reload_Piercing_Crossbow dummy
scoreboard objectives add Reload_Life_Arrow dummy
scoreboard objectives add Reload_Potion dummy
scoreboard objectives add Reload_Rock_Throw dummy
scoreboard objectives add Reload_Electric_Bow dummy
scoreboard objectives add Reload_Earth_Chestplate dummy
# Passives
scoreboard objectives add Thief minecraft.picked_up:minecraft.gold_nugget
scoreboard objectives add ThiefHalf dummy
scoreboard objectives add Take_Off_Charge dummy
scoreboard objectives add Take_Off custom:sneak_time
scoreboard objectives add Overheal_Max_Health dummy
scoreboard objectives add Overheal_Current_Health dummy
scoreboard objectives add Overheal_Amount dummy
scoreboard objectives add Cat_Level dummy
scoreboard objectives add Blood_Thirst totalKillCount
scoreboard objectives add Demonic_Fury totalKillCount
scoreboard objectives add Demonic_Fury_Level dummy
scoreboard objectives add Demonic_Fury_Stop_Time dummy
scoreboard objectives add Flee totalKillCount
scoreboard objectives add Arcane_Charge dummy
scoreboard objectives add Royal_Guard dummy
data modify storage variables royal_guard_1 set value 0
data modify storage variables royal_guard_2 set value 0
# Abilities
scoreboard objectives add Heal_Duration dummy
scoreboard objectives add Add_Bolt_Bow minecraft.used:minecraft.bow
scoreboard objectives add Add_Bolt_Crossbow minecraft.used:minecraft.crossbow
scoreboard objectives add Frenzy minecraft.picked_up:minecraft.gold_nugget
scoreboard objectives add Life_Arrow_Bow minecraft.used:minecraft.bow
scoreboard objectives add Life_Arrow_Crossbow minecraft.used:minecraft.crossbow
scoreboard objectives add Unleash totalKillCount
scoreboard objectives add Potion minecraft.used:minecraft.splash_potion
scoreboard objectives add Drain dummy
scoreboard objectives add Intangible_Time dummy
scoreboard objectives add Rock_Throw minecraft.used:minecraft.snowball

# Item effects
scoreboard objectives add Dark_Target_Hit dummy
scoreboard objectives add Dark_Projectile_Touched dummy
scoreboard objectives add Delay_Arcane_Grimoire dummy
scoreboard objectives add Delay_Light_Grimoire dummy
scoreboard objectives add Delay_Fire_Grimoire dummy
scoreboard objectives add Delay_Ice_Grimoire dummy
scoreboard objectives add Delay_Dark_Grimoire dummy
scoreboard objectives add Delay_Life_Grimoire dummy
scoreboard objectives add Delay_Death_Grimoire dummy
scoreboard objectives add Delay_Earth_Grimoire dummy
scoreboard objectives add Delay_Sky_Grimoire dummy
scoreboard objectives add Delay_Electric_Grimoire dummy
scoreboard objectives add Delay_Wind_Grimoire dummy
scoreboard objectives add Light_Mace_Duration dummy
scoreboard objectives add Death_Scythe_Kill totalKillCount
scoreboard objectives add Earth_Shield_Block custom:damage_blocked_by_shield
scoreboard objectives add Royal_guard_Strength dummy
data modify storage variables royal_stinger_1 set value 0
data modify storage variables royal_stinger_2 set value 0
scoreboard objectives add Dark_Chestplate_Time dummy
scoreboard objectives add Magnet_Time dummy
scoreboard objectives add Antidote_Time dummy
scoreboard objectives add Double_Coin_Time dummy
scoreboard objectives add Triple_Coin_Time dummy

# Set constants 1 to 10000 in scoreboard Variables
scoreboard players set 1 Variables 1
scoreboard players set 10000 Variables 10000
scoreboard players set i Variables 1
#data modify storage minecraft:variables input set value {"x":1}
function slashing_bee:set_constants


# ----- Bossbar -----
# Player 1
bossbar add energy_player_1 "Energie"
bossbar set minecraft:energy_player_1 max 1000
bossbar set energy_player_1 style notched_10
# Player 2
bossbar add energy_player_2 "Energie"
bossbar set minecraft:energy_player_2 max 1000
bossbar set energy_player_2 style notched_10

# ----- Team -----
team add Player
team modify Player friendlyFire false
team modify Player seeFriendlyInvisibles true
team modify Player collisionRule pushOwnTeam
team add Enemy
team modify Enemy friendlyFire false


