tag @a[scores={trigger=1}] add red
tag @a[scores={trigger=2}] add blue
tag @a[scores={trigger=3}] add green
tag @a[scores={trigger=4}] add yellow
tag @a[scores={trigger=8}] add gray
tag @a[scores={trigger=6}] add white
tag @a[scores={trigger=5}] add aqua
tag @a[scores={trigger=7}] add pink
tag @a[scores={trigger=9}] add spec


tag @a[scores={trigger=1}] remove blue
tag @a[scores={trigger=1}] remove green
tag @a[scores={trigger=1}] remove yellow
tag @a[scores={trigger=1}] remove gray
tag @a[scores={trigger=1}] remove white
tag @a[scores={trigger=1}] remove aqua
tag @a[scores={trigger=1}] remove pink
tag @a[scores={trigger=1}] remove spec

tag @a[scores={trigger=2}] remove red
tag @a[scores={trigger=2}] remove green
tag @a[scores={trigger=2}] remove yellow
tag @a[scores={trigger=2}] remove gray
tag @a[scores={trigger=2}] remove white
tag @a[scores={trigger=2}] remove aqua
tag @a[scores={trigger=2}] remove pink
tag @a[scores={trigger=2}] remove spec

tag @a[scores={trigger=3}] remove blue
tag @a[scores={trigger=3}] remove red
tag @a[scores={trigger=3}] remove yellow
tag @a[scores={trigger=3}] remove gray
tag @a[scores={trigger=3}] remove white
tag @a[scores={trigger=3}] remove aqua
tag @a[scores={trigger=3}] remove pink
tag @a[scores={trigger=3}] remove spec

tag @a[scores={trigger=4}] remove blue
tag @a[scores={trigger=4}] remove green
tag @a[scores={trigger=4}] remove red
tag @a[scores={trigger=4}] remove gray
tag @a[scores={trigger=4}] remove white
tag @a[scores={trigger=4}] remove aqua
tag @a[scores={trigger=4}] remove pink
tag @a[scores={trigger=4}] remove spec

tag @a[scores={trigger=8}] remove blue
tag @a[scores={trigger=8}] remove green
tag @a[scores={trigger=8}] remove yellow
tag @a[scores={trigger=8}] remove red
tag @a[scores={trigger=8}] remove white
tag @a[scores={trigger=8}] remove aqua
tag @a[scores={trigger=8}] remove pink
tag @a[scores={trigger=8}] remove spec

tag @a[scores={trigger=6}] remove blue
tag @a[scores={trigger=6}] remove green
tag @a[scores={trigger=6}] remove yellow
tag @a[scores={trigger=6}] remove gray
tag @a[scores={trigger=6}] remove red
tag @a[scores={trigger=6}] remove aqua
tag @a[scores={trigger=6}] remove pink
tag @a[scores={trigger=6}] remove spec

tag @a[scores={trigger=5}] remove blue
tag @a[scores={trigger=5}] remove green
tag @a[scores={trigger=5}] remove yellow
tag @a[scores={trigger=5}] remove gray
tag @a[scores={trigger=5}] remove white
tag @a[scores={trigger=5}] remove red
tag @a[scores={trigger=5}] remove pink
tag @a[scores={trigger=5}] remove spec

tag @a[scores={trigger=7}] remove blue
tag @a[scores={trigger=7}] remove green
tag @a[scores={trigger=7}] remove yellow
tag @a[scores={trigger=7}] remove gray
tag @a[scores={trigger=7}] remove white
tag @a[scores={trigger=7}] remove aqua
tag @a[scores={trigger=7}] remove red
tag @a[scores={trigger=7}] remove spec

tag @a[scores={trigger=9}] remove red
tag @a[scores={trigger=9}] remove blue
tag @a[scores={trigger=9}] remove green
tag @a[scores={trigger=9}] remove yellow
tag @a[scores={trigger=9}] remove gray
tag @a[scores={trigger=9}] remove white
tag @a[scores={trigger=9}] remove aqua
tag @a[scores={trigger=9}] remove red

team join red @a[tag=red]
team join blue @a[tag=blue]
team join green @a[tag=green]
team join yellow @a[tag=yellow]
team join gray @a[tag=gray]
team join white @a[tag=white]
team join aqua @a[tag=aqua]
team join pink @a[tag=pink]
team join spec @a[tag=spec]

execute unless entity @e[type=armor_stand,tag=has] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["has"],CustomName:"{\"text\":\"HAS JOINED THE\",\"color\":\"white\",\"bold\":\"true\"}"}
execute unless entity @e[type=armor_stand,tag=team] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["team"],CustomName:"{\"text\":\"TEAM\",\"color\":\"white\",\"bold\":\"true\"}"}
execute unless entity @e[type=armor_stand,tag=redT] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["redT"],CustomName:"{\"text\":\"[RED]\",\"color\":\"red\",\"bold\":\"true\"}"}
execute unless entity @e[type=armor_stand,tag=blueT] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["blueT"],CustomName:"{\"text\":\"[BLUE]\",\"color\":\"blue\",\"bold\":\"true\"}"}
execute unless entity @e[type=armor_stand,tag=greenT] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["greenT"],CustomName:"{\"text\":\"[GREEN]\",\"color\":\"green\",\"bold\":\"true\"}"}
execute unless entity @e[type=armor_stand,tag=yellowT] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["yellowT"],CustomName:"{\"text\":\"[YELLOW]\",\"color\":\"yellow\",\"bold\":\"true\"}"}
execute unless entity @e[type=armor_stand,tag=grayT] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["grayT"],CustomName:"{\"text\":\"[GRAY]\",\"color\":\"gray\",\"bold\":\"true\"}"}
execute unless entity @e[type=armor_stand,tag=whiteT] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["whiteT"],CustomName:"{\"text\":\"[WHITE]\",\"color\":\"white\",\"bold\":\"true\"}"}
execute unless entity @e[type=armor_stand,tag=aquaT] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["aquaT"],CustomName:"{\"text\":\"[AQUA]\",\"color\":\"aqua\",\"bold\":\"true\"}"}
execute unless entity @e[type=armor_stand,tag=pinkT] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["pinkT"],CustomName:"{\"text\":\"[PINK]\",\"color\":\"light_purple\",\"bold\":\"true\"}"}

execute as @a[tag=red,scores={trigger=1..}] at @s run say @e[tag=has] @e[tag=redT] @e[tag=team]
execute as @a[tag=blue,scores={trigger=1..}] at @s run say @e[tag=has] @e[tag=blueT] @e[tag=team]
execute as @a[tag=green,scores={trigger=1..}] at @s run say @e[tag=has] @e[tag=greenT] @e[tag=team]
execute as @a[tag=yellow,scores={trigger=1..}] at @s run say @e[tag=has] @e[tag=yellowT] @e[tag=team]
execute as @a[tag=gray,scores={trigger=1..}] at @s run say @e[tag=has] @e[tag=grayT] @e[tag=team]
execute as @a[tag=white,scores={trigger=1..}] at @s run say @e[tag=has] @e[tag=whiteT] @e[tag=team]
execute as @a[tag=aqua,scores={trigger=1..}] at @s run say @e[tag=has] @e[tag=aquaT] @e[tag=team]
execute as @a[tag=pink,scores={trigger=1..}] at @s run say @e[tag=has] @e[tag=pinkT] @e[tag=team]

scoreboard players reset @a[scores={trigger=1..}] trigger