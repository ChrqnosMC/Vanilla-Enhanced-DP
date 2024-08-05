#Warden Bossbar

execute as @a at @s if score @s first_warden_check matches 0 run execute at @s if entity @e[type=warden,tag=,distance=..100] run scoreboard players set @s first_warden_check 1
execute as @a at @s if score @s first_warden_check matches 1.. run function vanilla_enhanced:set_warden/set_first_warden
execute as @a at @s if score @s second_warden_check matches 0 run execute at @s if entity @e[type=warden,tag=,distance=..100] run scoreboard players set @s second_warden_check 1
execute as @a at @s if score @s second_warden_check matches 1.. run function vanilla_enhanced:set_warden/set_second_warden
execute as @a at @s if score @s third_warden_check matches 0 run execute at @s if entity @e[type=warden,tag=,distance=..100] run scoreboard players set @s third_warden_check 1
execute as @a at @s if score @s third_warden_check matches 1.. run function vanilla_enhanced:set_warden/set_third_warden
execute as @a at @s if score @s fourth_warden_check matches 0 run execute at @s if entity @e[type=warden,tag=,distance=..100] run scoreboard players set @s fourth_warden_check 1
execute as @a at @s if score @s fourth_warden_check matches 1.. run function vanilla_enhanced:set_warden/set_fourth_warden
execute as @a at @s if score @s fifth_warden_check matches 0 run execute at @s if entity @e[type=warden,tag=,distance=..100] run scoreboard players set @s fifth_warden_check 1
execute as @a at @s if score @s fifth_warden_check matches 1.. run function vanilla_enhanced:set_warden/set_fifth_warden
execute as @a at @s if score @s sixth_warden_check matches 0 run execute at @s if entity @e[type=warden,tag=,distance=..100] run scoreboard players set @s sixth_warden_check 1
execute as @a at @s if score @s sixth_warden_check matches 1.. run function vanilla_enhanced:set_warden/set_sixth_warden
execute as @a at @s if score @s seventh_warden_check matches 0 run execute at @s if entity @e[type=warden,tag=,distance=..100] run scoreboard players set @s seventh_warden_check 1
execute as @a at @s if score @s seventh_warden_check matches 1.. run function vanilla_enhanced:set_warden/set_seventh_warden
execute as @a at @s if score @s eighth_warden_check matches 0 run execute at @s if entity @e[type=warden,tag=,distance=..100] run scoreboard players set @s eighth_warden_check 1
execute as @a at @s if score @s eighth_warden_check matches 1.. run function vanilla_enhanced:set_warden/set_eighth_warden
execute as @a at @s if entity @e[type=warden,distance=..100] run advancement grant @s only vanilla_enhanced:warden_trigger

#Illusioner Raider

execute as @e[type=#raiders,tag=!raiders_check,limit=1,predicate=vanilla_enhanced:chance_5,nbt=!{Wave:0},nbt=!{Wave:3},nbt=!{Wave:4},nbt=!{Wave:5},nbt=!{Wave:6},nbt=!{Wave:7},nbt=!{Wave:8}] at @s run function vanilla_enhanced:spawn/illusioner
execute as @e[type=#raiders,tag=!raiders_check,limit=2,predicate=vanilla_enhanced:chance_5,nbt=!{Wave:0},nbt=!{Wave:1},nbt=!{Wave:2},nbt=!{Wave:6},nbt=!{Wave:7},nbt=!{Wave:8}] at @s run function vanilla_enhanced:spawn/illusioner
execute as @e[type=#raiders,tag=!raiders_check,limit=3,predicate=vanilla_enhanced:chance_10,nbt=!{Wave:0},nbt=!{Wave:1},nbt=!{Wave:2},nbt=!{Wave:3},nbt=!{Wave:4},nbt=!{Wave:5}] at @s run function vanilla_enhanced:spawn/illusioner
execute as @e[type=#raiders,tag=!raiders_check,limit=1,predicate=vanilla_enhanced:chance_5,nbt=!{Wave:0},nbt=!{Wave:1},nbt=!{Wave:2},nbt=!{Wave:3},nbt=!{Wave:4}] at @s run function vanilla_enhanced:spawn/illusioner_rider
tag @e[type=#raiders,tag=!raiders_check] add raiders_check

#More Vault

execute as @a[advancements={vanilla_enhanced:consume_dreaming_bottle=true}] at @s run function vanilla_enhanced:get_effect/get_dreaming
execute as @a[advancements={vanilla_enhanced:enter_bastion_remnant_with_bad_omen=true}] at @s run function vanilla_enhanced:get_effect/get_bastion_omen
execute as @a[advancements={vanilla_enhanced:enter_end_city_with_bad_omen=true}] at @s run function vanilla_enhanced:get_effect/get_city_omen
execute as @s[advancements={vanilla_enhanced:check_sleep=true}] at @s run function vanilla_enhanced:get_effect/remove_dreaming

#End to Overworld

execute as @a at @s run function vanilla_enhanced:connected_world

schedule function vanilla_enhanced:tick 1t