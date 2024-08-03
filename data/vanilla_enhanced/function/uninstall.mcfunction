#AFK Display

schedule clear vanilla_enhanced:second

scoreboard objectives remove afk.x1
scoreboard objectives remove afk.x2
scoreboard objectives remove afk.y1
scoreboard objectives remove afk.y2
scoreboard objectives remove afk.z1
scoreboard objectives remove afk.z2
scoreboard objectives remove afk.checkAFK
team remove afk

#Tab Player Health

scoreboard objectives remove Health

#Warden bossbar

schedule clear vanilla_enhanced:tick

bossbar remove first_warden
scoreboard objectives remove first_warden_check
bossbar remove second_warden
scoreboard objectives remove second_warden_check
bossbar remove third_warden
scoreboard objectives remove third_warden_check
bossbar remove fourth_warden
scoreboard objectives remove fourth_warden_check
bossbar remove fifth_warden
scoreboard objectives remove fifth_warden_check
bossbar remove sixth_warden
scoreboard objectives remove sixth_warden_check
bossbar remove seventh_warden
scoreboard objectives remove seventh_warden_check
bossbar remove eighth_warden
scoreboard objectives remove eighth_warden_check

tellraw @a ["",{"text":"Vanilla Enhanced datapack has been uninstall","bold":true,"color":"white"}]