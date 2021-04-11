scoreboard objectives add trigger trigger
scoreboard objectives add gametimer dummy
scoreboard objectives add clicktimer dummy
scoreboard objectives add death dummy
scoreboard objectives add forge dummy
scoreboard objectives add bwdeath minecraft.custom:minecraft.deaths
scoreboard objectives add tnt minecraft.used:minecraft.tnt
scoreboard objectives add event dummy
scoreboard objectives add regen dummy
scoreboard objectives add eliminated dummy
scoreboard objectives add invis dummy
scoreboard objectives add ironCount dummy
scoreboard objectives add why dummy
scoreboard objectives add goldCount dummy
scoreboard objectives add emeraldCount dummy
scoreboard objectives add diaCount dummy
scoreboard objectives add Health health {"text":"❤","color":"red"}
scoreboard objectives setdisplay belowName Health
scoreboard objectives setdisplay list Health
scoreboard objectives add leave minecraft.custom:minecraft.leave_game
scoreboard objectives add joinG dummy
team modify none friendlyFire false
team modify red friendlyFire false
team modify blue friendlyFire false
team modify green friendlyFire false
team modify yellow friendlyFire false
team modify white friendlyFire false
team modify gray friendlyFire false
team modify aqua friendlyFire false
team modify pink friendlyFire false
gamerule doLimitedCrafting false
gamerule keepInventory true
gamerule mobGriefing false
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule doMobSpawning false
gamerule naturalRegeneration false
gamerule announceAdvancements false
gamerule randomTickSpeed 0
gamerule doLimitedCrafting true

gamerule sendCommandFeedback false

team add red
team add blue
team add green
team add yellow
team add gray
team add white
team add aqua
team add pink
team add none
team add spec
team modify red collisionRule never
team modify blue collisionRule never
team modify green collisionRule never
team modify yellow collisionRule never
team modify gray collisionRule never
team modify white collisionRule never
team modify aqua collisionRule never
team modify pink collisionRule never
team modify red color red
team modify blue color blue
team modify green color green
team modify yellow color yellow
team modify gray color gray
team modify white color white
team modify aqua color aqua
team modify pink color light_purple
team modify red prefix {"text":"[RED] ","color":"red","bold":"true"}
team modify blue prefix {"text":"[BLUE] ","color":"blue","bold":"true"}
team modify green prefix {"text":"[GREEN] ","color":"green","bold":"true"}
team modify yellow prefix {"text":"[YELLOW] ","color":"yellow","bold":"true"}
team modify gray prefix {"text":"[GRAY] ","color":"gray","bold":"true"}
team modify white prefix {"text":"[WHITE] ","color":"white","bold":"true"}
team modify aqua prefix {"text":"[AQUA] ","color":"aqua","bold":"true"}
team modify pink prefix {"text":"[PINK] ","color":"pink","bold":"true"}
