bossbar set fourth_warden players @a
execute as @a at @s if score @s fourth_warden_check matches 1 run execute as @e[type=warden,tag=,distance=..100] run tag @s add fourth_warden
execute as @a at @s if score @s fourth_warden_check matches 1 run scoreboard players set @s fourth_warden_check 2
execute at @a run execute as @e[type=warden,tag=fourth_warden,distance=..100] run execute store result bossbar fourth_warden value run data get entity @s Health
execute at @a if entity @e[type=warden,tag=fourth_warden,distance=..100] run bossbar set fourth_warden visible true
execute at @a if entity @e[type=warden,tag=fourth_warden,distance=100..] run function vanilla_enhanced:unset_warden/unset_fourth_warden
execute at @a unless entity @e[type=warden,tag=fourth_warden,distance=..100] run function vanilla_enhanced:unset_warden/unset_fourth_warden