##death sequences

execute as @a[scores={bwdeath=1..,death=1}] at @s run tp @s @e[tag=diaF,limit=1]
execute as @a[tag=red,scores={bwdeath=1..,death=1}] at @s run title @s title {"text":"You Died","color":"red","bold":"true","italic":"true"}
execute as @e[tag=redB] at @s run title @a[tag=alive,tag=red,scores={bwdeath=1..,death=40}] title {"text":"Respawning In 5...","color":"red","bold":"true","italic":"true"}
execute as @e[tag=redB] at @s run title @a[tag=alive,tag=red,scores={bwdeath=1..,death=60}] title {"text":"Respawning In 4...","color":"red","bold":"true","italic":"true"}
execute as @e[tag=redB] at @s run title @a[tag=alive,tag=red,scores={bwdeath=1..,death=80}] title {"text":"Respawning In 3...","color":"red","bold":"true","italic":"true"}
execute as @e[tag=redB] at @s run title @a[tag=alive,tag=red,scores={bwdeath=1..,death=100}] title {"text":"Respawning In 2...","color":"red","bold":"true","italic":"true"}
execute as @e[tag=redB] at @s run title @a[tag=alive,tag=red,scores={bwdeath=1..,death=120}] title {"text":"Respawning In 1...","color":"red","bold":"true","italic":"true"}
execute as @e[tag=redB] at @e[tag=redS,limit=1] run tp @a[tag=alive,tag=red,scores={bwdeath=1..,death=120}] ~ ~.5 ~
execute as @e[tag=redB] at @s run gamemode adventure @a[tag=alive,tag=red,scores={bwdeath=1..,death=120..}]
effect give @a[scores={bwdeath=1..,death=120}] instant_health 1 200 true
execute as @e[tag=redB] at @s run scoreboard players reset @a[tag=alive,tag=red,scores={bwdeath=1..,death=120..}]


execute as @a[tag=alive,tag=blue,scores={bwdeath=1..,death=1}] at @s run title @s title {"text":"You Died","color":"red","bold":"true","italic":"true"}
execute as @e[tag=blueB] at @s run title @a[tag=alive,tag=blue,scores={bwdeath=1..,death=40}] title {"text":"Respawning In 5...","color":"red","bold":"true","italic":"true"}
execute as @e[tag=blueB] at @s run title @a[tag=alive,tag=blue,scores={bwdeath=1..,death=60}] title {"text":"Respawning In 4...","color":"red","bold":"true","italic":"true"}
execute as @e[tag=blueB] at @s run title @a[tag=alive,tag=blue,scores={bwdeath=1..,death=80}] title {"text":"Respawning In 3...","color":"red","bold":"true","italic":"true"}
execute as @e[tag=blueB] at @s run title @a[tag=alive,tag=blue,scores={bwdeath=1..,death=100}] title {"text":"Respawning In 2...","color":"red","bold":"true","italic":"true"}
execute as @e[tag=blueB] at @s run title @a[tag=alive,tag=blue,scores={bwdeath=1..,death=120}] title {"text":"Respawning In 1...","color":"red","bold":"true","italic":"true"}
execute as @e[tag=blueB] at @e[tag=blueS,limit=1] run tp @a[tag=alive,tag=blue,scores={bwdeath=1..,death=120}] ~ ~.5 ~
execute as @e[tag=blueB] at @s run gamemode adventure @a[tag=alive,tag=blue,scores={bwdeath=1..,death=120..}]
execute as @e[tag=blueB] at @s run scoreboard players reset @a[tag=alive,tag=blue,scores={bwdeath=1..,death=120..}]


execute as @a[tag=alive,tag=green,scores={bwdeath=1..,death=1}] at @s run title @s title {"text":"You Died","color":"red","bold":"true","italic":"true"}
execute as @e[tag=greenB] at @s run title @a[tag=alive,tag=green,scores={bwdeath=1..,death=40}] title {"text":"Respawning In 5...","color":"red","bold":"true","italic":"true"}
execute as @e[tag=greenB] at @s run title @a[tag=alive,tag=green,scores={bwdeath=1..,death=60}] title {"text":"Respawning In 4...","color":"red","bold":"true","italic":"true"}
execute as @e[tag=greenB] at @s run title @a[tag=alive,tag=green,scores={bwdeath=1..,death=80}] title {"text":"Respawning In 3...","color":"red","bold":"true","italic":"true"}
execute as @e[tag=greenB] at @s run title @a[tag=alive,tag=green,scores={bwdeath=1..,death=100}] title {"text":"Respawning In 2...","color":"red","bold":"true","italic":"true"}
execute as @e[tag=greenB] at @s run title @a[tag=alive,tag=green,scores={bwdeath=1..,death=120}] title {"text":"Respawning In 1...","color":"red","bold":"true","italic":"true"}
execute as @e[tag=greenB] at @e[tag=greenS,limit=1] run tp @a[tag=alive,tag=green,scores={bwdeath=1..,death=120}] ~ ~.5 ~
execute as @e[tag=greenB] at @s run gamemode adventure @a[tag=alive,tag=green,scores={bwdeath=1..,death=120..}]
execute as @e[tag=greenB] at @s run scoreboard players reset @a[tag=alive,tag=green,scores={bwdeath=1..,death=120..}]


execute as @a[tag=alive,tag=yellow,scores={bwdeath=1..,death=1}] at @s run title @s title {"text":"You Died","color":"red","bold":"true","italic":"true"}
execute as @e[tag=yellowB] at @s run title @a[tag=alive,tag=yellow,scores={bwdeath=1..,death=40}] title {"text":"Respawning In 5...","color":"red","bold":"true","italic":"true"}
execute as @e[tag=yellowB] at @s run title @a[tag=alive,tag=yellow,scores={bwdeath=1..,death=60}] title {"text":"Respawning In 4...","color":"red","bold":"true","italic":"true"}
execute as @e[tag=yellowB] at @s run title @a[tag=alive,tag=yellow,scores={bwdeath=1..,death=80}] title {"text":"Respawning In 3...","color":"red","bold":"true","italic":"true"}
execute as @e[tag=yellowB] at @s run title @a[tag=alive,tag=yellow,scores={bwdeath=1..,death=100}] title {"text":"Respawning In 2...","color":"red","bold":"true","italic":"true"}
execute as @e[tag=yellowB] at @s run title @a[tag=alive,tag=yellow,scores={bwdeath=1..,death=120}] title {"text":"Respawning In 1...","color":"red","bold":"true","italic":"true"}
execute as @e[tag=yellowB] at @e[tag=yellowS,limit=1] run tp @a[tag=alive,tag=yellow,scores={bwdeath=1..,death=120}] ~ ~.5 ~
execute as @e[tag=yellowB] at @s run gamemode adventure @a[tag=alive,tag=yellow,scores={bwdeath=1..,death=120..}]
execute as @e[tag=yellowB] at @s run scoreboard players reset @a[tag=alive,tag=yellow,scores={bwdeath=1..,death=120..}]


execute as @a[tag=alive,tag=gray,scores={bwdeath=1..,death=1}] at @s run title @s title {"text":"You Died","color":"red","bold":"true","italic":"true"}
execute as @e[tag=grayB] at @s run title @a[tag=alive,tag=gray,scores={bwdeath=1..,death=40}] title {"text":"Respawning In 5...","color":"red","bold":"true","italic":"true"}
execute as @e[tag=grayB] at @s run title @a[tag=alive,tag=gray,scores={bwdeath=1..,death=60}] title {"text":"Respawning In 4...","color":"red","bold":"true","italic":"true"}
execute as @e[tag=grayB] at @s run title @a[tag=alive,tag=gray,scores={bwdeath=1..,death=80}] title {"text":"Respawning In 3...","color":"red","bold":"true","italic":"true"}
execute as @e[tag=grayB] at @s run title @a[tag=alive,tag=gray,scores={bwdeath=1..,death=100}] title {"text":"Respawning In 2...","color":"red","bold":"true","italic":"true"}
execute as @e[tag=grayB] at @s run title @a[tag=alive,tag=gray,scores={bwdeath=1..,death=120}] title {"text":"Respawning In 1...","color":"red","bold":"true","italic":"true"}
execute as @e[tag=grayB] at @e[tag=grayS,limit=1] run tp @a[tag=alive,tag=gray,scores={bwdeath=1..,death=120}] ~ ~.5 ~
execute as @e[tag=grayB] at @s run gamemode adventure @a[tag=alive,tag=gray,scores={bwdeath=1..,death=120..}]
execute as @e[tag=grayB] at @s run scoreboard players reset @a[tag=alive,tag=gray,scores={bwdeath=1..,death=120..}]


execute as @a[tag=alive,tag=white,scores={bwdeath=1..,death=1}] at @s run title @s title {"text":"You Died","color":"red","bold":"true","italic":"true"}
execute as @e[tag=whiteB] at @s run title @a[tag=alive,tag=white,scores={bwdeath=1..,death=40}] title {"text":"Respawning In 5...","color":"red","bold":"true","italic":"true"}
execute as @e[tag=whiteB] at @s run title @a[tag=alive,tag=white,scores={bwdeath=1..,death=60}] title {"text":"Respawning In 4...","color":"red","bold":"true","italic":"true"}
execute as @e[tag=whiteB] at @s run title @a[tag=alive,tag=white,scores={bwdeath=1..,death=80}] title {"text":"Respawning In 3...","color":"red","bold":"true","italic":"true"}
execute as @e[tag=whiteB] at @s run title @a[tag=alive,tag=white,scores={bwdeath=1..,death=100}] title {"text":"Respawning In 2...","color":"red","bold":"true","italic":"true"}
execute as @e[tag=whiteB] at @s run title @a[tag=alive,tag=white,scores={bwdeath=1..,death=120}] title {"text":"Respawning In 1...","color":"red","bold":"true","italic":"true"}
execute as @e[tag=whiteB] at @e[tag=whiteS,limit=1] run tp @a[tag=alive,tag=white,scores={bwdeath=1..,death=120}] ~ ~.5 ~
execute as @e[tag=whiteB] at @s run gamemode adventure @a[tag=alive,tag=white,scores={bwdeath=1..,death=120..}]
execute as @e[tag=whiteB] at @s run scoreboard players reset @a[tag=alive,tag=white,scores={bwdeath=1..,death=120..}]


execute as @a[tag=alive,tag=aqua,scores={bwdeath=1..,death=1}] at @s run title @s title {"text":"You Died","color":"red","bold":"true","italic":"true"}
execute as @e[tag=aquaB] at @s run title @a[tag=alive,tag=aqua,scores={bwdeath=1..,death=40}] title {"text":"Respawning In 5...","color":"red","bold":"true","italic":"true"}
execute as @e[tag=aquaB] at @s run title @a[tag=alive,tag=aqua,scores={bwdeath=1..,death=60}] title {"text":"Respawning In 4...","color":"red","bold":"true","italic":"true"}
execute as @e[tag=aquaB] at @s run title @a[tag=alive,tag=aqua,scores={bwdeath=1..,death=80}] title {"text":"Respawning In 3...","color":"red","bold":"true","italic":"true"}
execute as @e[tag=aquaB] at @s run title @a[tag=alive,tag=aqua,scores={bwdeath=1..,death=100}] title {"text":"Respawning In 2...","color":"red","bold":"true","italic":"true"}
execute as @e[tag=aquaB] at @s run title @a[tag=alive,tag=aqua,scores={bwdeath=1..,death=120}] title {"text":"Respawning In 1...","color":"red","bold":"true","italic":"true"}
execute as @e[tag=aquaB] at @e[tag=aquaS,limit=1] run tp @a[tag=alive,tag=aqua,scores={bwdeath=1..,death=120}] ~ ~.5 ~
execute as @e[tag=aquaB] at @s run gamemode adventure @a[tag=alive,tag=aqua,scores={bwdeath=1..,death=120..}]
execute as @e[tag=aquaB] at @s run scoreboard players reset @a[tag=alive,tag=aqua,scores={bwdeath=1..,death=120..}]


execute as @a[tag=alive,tag=pink,scores={bwdeath=1..,death=1}] at @s run title @s title {"text":"You Died","color":"red","bold":"true","italic":"true"}
execute as @e[tag=pinkB] at @s run title @a[tag=alive,tag=pink,scores={bwdeath=1..,death=40}] title {"text":"Respawning In 5...","color":"red","bold":"true","italic":"true"}
execute as @e[tag=pinkB] at @s run title @a[tag=alive,tag=pink,scores={bwdeath=1..,death=60}] title {"text":"Respawning In 4...","color":"red","bold":"true","italic":"true"}
execute as @e[tag=pinkB] at @s run title @a[tag=alive,tag=pink,scores={bwdeath=1..,death=80}] title {"text":"Respawning In 3...","color":"red","bold":"true","italic":"true"}
execute as @e[tag=pinkB] at @s run title @a[tag=alive,tag=pink,scores={bwdeath=1..,death=100}] title {"text":"Respawning In 2...","color":"red","bold":"true","italic":"true"}
execute as @e[tag=pinkB] at @s run title @a[tag=alive,tag=pink,scores={bwdeath=1..,death=120}] title {"text":"Respawning In 1...","color":"red","bold":"true","italic":"true"}
execute as @e[tag=pinkB] at @e[tag=pinkS,limit=1] run tp @a[tag=alive,tag=pink,scores={bwdeath=1..,death=120}] ~ ~.5 ~
execute as @e[tag=pinkB] at @s run gamemode adventure @a[tag=pink,scores={bwdeath=1..,death=120..}]
execute as @e[tag=pinkB] at @s run scoreboard players reset @a[tag=pink,scores={bwdeath=1..,death=120..}]