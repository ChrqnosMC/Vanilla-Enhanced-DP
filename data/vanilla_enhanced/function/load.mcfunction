#AFK Display

scoreboard objectives add afk.x1 dummy
scoreboard objectives add afk.x2 dummy
scoreboard objectives add afk.y1 dummy
scoreboard objectives add afk.y2 dummy
scoreboard objectives add afk.z1 dummy
scoreboard objectives add afk.z2 dummy
scoreboard objectives add afk.checkAFK dummy

team add afk "AFK Display"
team modify afk color white
team modify afk suffix {"text":" [AFK]", "color":"white"}

#Tab Player Health

scoreboard objectives add Health health
scoreboard objectives setdisplay list Health
scoreboard objectives setdisplay below_name Health

#Warden bossbar

bossbar add first_warden {"text":"Warden"}
bossbar set first_warden max 500
bossbar set first_warden style progress
bossbar set first_warden color blue
scoreboard objectives add first_warden_check dummy

bossbar add second_warden {"text":"Warden"}
bossbar set second_warden max 500
bossbar set second_warden style progress
bossbar set second_warden color blue
scoreboard objectives add second_warden_check dummy

bossbar add third_warden {"text":"Warden"}
bossbar set third_warden max 500
bossbar set third_warden style progress
bossbar set third_warden color blue
scoreboard objectives add third_warden_check dummy

bossbar add fourth_warden {"text":"Warden"}
bossbar set fourth_warden max 500
bossbar set fourth_warden style progress
bossbar set fourth_warden color blue
scoreboard objectives add fourth_warden_check dummy

bossbar add fifth_warden {"text":"Warden"}
bossbar set fifth_warden max 500
bossbar set fifth_warden style progress
bossbar set fifth_warden color blue
scoreboard objectives add fifth_warden_check dummy

bossbar add sixth_warden {"text":"Warden"}
bossbar set sixth_warden max 500
bossbar set sixth_warden style progress
bossbar set sixth_warden color blue
scoreboard objectives add sixth_warden_check dummy

bossbar add seventh_warden {"text":"Warden"}
bossbar set seventh_warden max 500
bossbar set seventh_warden style progress
bossbar set seventh_warden color blue
scoreboard objectives add seventh_warden_check dummy

bossbar add eighth_warden {"text":"Warden"}
bossbar set eighth_warden max 500
bossbar set eighth_warden style progress
bossbar set eighth_warden color blue
scoreboard objectives add eighth_warden_check dummy

schedule function vanilla_enhanced:tick 1t

tellraw @a ["",{"text":"Vanilla Enhanced datapack has been reloaded","bold":true,"color":"white"}]