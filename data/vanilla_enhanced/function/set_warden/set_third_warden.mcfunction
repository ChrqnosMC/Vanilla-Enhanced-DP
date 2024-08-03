bossbar set third_warden players @a
execute as @a at @s if score @s third_warden_check matches 1 run execute as @e[type=warden,tag=,distance=..100] run tag @s add third_warden
execute as @a at @s if score @s third_warden_check matches 1 run scoreboard players set @s third_warden_check 2
execute at @a run execute as @e[type=warden,tag=third_warden,distance=..100] run execute store result bossbar third_warden value run data get entity @s Health
execute at @a if entity @e[type=warden,tag=third_warden,distance=..100] run bossbar set third_warden visible true
execute at @a if entity @e[type=warden,tag=third_warden,distance=100..] run function vanilla_enhanced:unset_warden/unset_third_warden
execute at @a unless entity @e[type=warden,tag=third_warden,distance=..100] run function vanilla_enhanced:unset_warden/unset_third_warden