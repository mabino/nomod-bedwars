execute at @a as @e[type=item,distance=..2] run function bw:item

execute as @e[tag=redB,type=armor_stand] at @s unless entity @a[tag=red] run setblock ~ ~ ~ air
execute as @e[tag=blueB,type=armor_stand] at @s unless entity @a[tag=blue] run setblock ~ ~ ~ air
execute as @e[tag=greenB,type=armor_stand] at @s unless entity @a[tag=green] run setblock ~ ~ ~ air
execute as @e[tag=yellowB,type=armor_stand] at @s unless entity @a[tag=yellow] run setblock ~ ~ ~ air
execute as @e[tag=grayB,type=armor_stand] at @s unless entity @a[tag=gray] run setblock ~ ~ ~ air
execute as @e[tag=whiteB,type=armor_stand] at @s unless entity @a[tag=white] run setblock ~ ~ ~ air
execute as @e[tag=aquaB,type=armor_stand] at @s unless entity @a[tag=aqua] run setblock ~ ~ ~ air
execute as @e[tag=pinkB,type=armor_stand] at @s unless entity @a[tag=pink] run setblock ~ ~ ~ air

execute as @a[tag=basicB] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:bow",tag:{HideFlags:20}}]}] run tag @s remove basicB
execute as @a[tag=goldB] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:bow",tag:{Enchantments:[{id:"minecraft:power",lvl:1}]}}]}] run tag @s remove goldB
execute as @a[tag=emB] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:bow",tag:{Enchantments:[{id:"minecraft:power",lvl:1},{id:"minecraft:punch",lvl:1}]}}]}] run tag @s remove emB

execute as @a[tag=!red,tag=!blue,tag=!green,tag=!yellow,tag=!gray,tag=!white,tag=!aqua,tag=!pink] at @s if entity @e[type=armor_stand,tag=timer,scores={gametimer=160..}] run gamemode spectator @s
clear @a[gamemode=adventure] stick
clear @a[gamemode=adventure] #minecraft:carpets
clear @a[gamemode=adventure] crafting_table
clear @a[gamemode=adventure] #minecraft:wooden_pressure_plates


execute run scoreboard players add @a[scores={leave=1..}] joinG 1
execute if entity @a[scores={joinG=1..}] run function bw:join


execute as @a[scores={joinG=400..}] at @s run scoreboard players reset @s leave
execute as @a at @s unless entity @s[scores={leave=1..}] run scoreboard players reset @s joinG
kill @e[type=minecraft:experience_orb]
kill @e[type=item,nbt={Item:{id:"minecraft:shulker_shell",Count:1b}}]
kill @e[type=item,nbt={Item:{id:"minecraft:red_bed",Count:1b}}]
kill @e[type=item,nbt={Item:{id:"minecraft:blue_bed",Count:1b}}]
kill @e[type=item,nbt={Item:{id:"minecraft:lime_bed",Count:1b}}]
kill @e[type=item,nbt={Item:{id:"minecraft:yellow_bed",Count:1b}}]
kill @e[type=item,nbt={Item:{id:"minecraft:white_bed",Count:1b}}]
kill @e[type=item,nbt={Item:{id:"minecraft:gray_bed",Count:1b}}]
kill @e[type=item,nbt={Item:{id:"minecraft:light_blue_bed",Count:1b}}]
kill @e[type=item,nbt={Item:{id:"minecraft:pink_bed",Count:1b}}]

scoreboard objectives add world dummy
scoreboard players add @a world 1
execute if entity @a[scores={world=..10}] run function bw:world

execute if score #count forge matches ..3 run tag @a add fail
execute if score #count1 forge matches ..3 run tag @a add fail
execute if score #count2 forge matches ..7 run tag @a add fail
execute if score #count3 forge matches ..7 run tag @a add fail
execute if score #count4 forge matches ..7 run tag @a add fail
execute if score #count5 forge matches ..7 run tag @a add fail
execute if score #count6 forge matches ..7 run tag @a add fail
execute if score #count7 forge matches 0 run tag @a add fail
execute if score #count forge matches 4.. if score #count1 forge matches 4.. if score #count2 forge matches 8.. if score #count3 forge matches 8.. if score #count4 forge matches 8.. if score #count5 forge matches 8.. if score #count6 forge matches 8.. if score #count7 forge matches 1.. run tag @a remove fail

execute if entity @e[type=armor_stand,tag=timer,scores={gametimer=100..}] run gamemode spectator @a[tag=spec]

execute unless entity @e[tag=timer,type=armor_stand,scores={gametimer=1..}] run effect give @a[gamemode=adventure] weakness 1 200 true
team join none @a[tag=!spec,tag=!red,tag=!blue,tag=!green,tag=!yellow,tag=!gray,tag=!white,tag=!aqua,tag=!pink]
execute unless entity @e[type=armor_stand,tag=timer,scores={gametimer=100..}] run scoreboard players reset @a bwdeath


execute as @a[gamemode=!spectator,nbt={Inventory:[{id:"minecraft:tnt"}]}] at @s unless entity @s[nbt={ActiveEffects:[{Id:14b}]}] run particle dust 1.000 0.000 0.000 1 ~ ~2.3 ~ 0 0 0 1 0 normal
scoreboard players add @a regen 1
scoreboard players add @a join 1
effect give @a[scores={regen=79}] regeneration 1 2 true
scoreboard players reset @a[scores={regen=80..}] regen
execute as @a store result score @s why run data get entity @s Pos[1] 1
execute as @a[scores={why=0}] at @s run effect clear @s
execute as @a[scores={why=0}] at @s run function bw:invis
execute as @a[gamemode=!spectator,scores={why=..0}] at @s unless entity @s[scores={bwdeath=1..}] run say has died to the void
execute as @a[scores={why=..0}] at @s unless entity @s[scores={bwdeath=1..}] run scoreboard players add @s bwdeath 1
execute as @a[scores={bwdeath=1..,death=100}] at @s run effect clear @s
execute if entity @a[scores={invis=600}] run function bw:dia
effect give @a saturation 10 100 true
execute if entity @e[type=armor_stand,tag=timer,scores={gametimer=1..}] run scoreboard players add @e[type=armor_stand,tag=timer] forge 1
scoreboard players reset @e[type=armor_stand,tag=timer,scores={forge=1200}] forge
execute as @a at @s if entity @e[type=armor_stand,tag=timer,scores={gametimer=1}] run tag @a add alive
execute as @a[limit=1] at @s unless entity @e[type=armor_stand,tag=timer] run summon armor_stand ~ ~ ~ {NoGravity:1b,Tags:["timer"],Marker:1b,Invisible:1b}

execute if entity @a[scores={trigger=99}] run scoreboard players add @e[tag=timer,type=armor_stand] clicktimer 1
execute if entity @e[type=armor_stand,tag=timer,scores={clicktimer=1}] run scoreboard players reset @a trigger

execute if entity @e[type=armor_stand,tag=timer,scores={clicktimer=1}] run tellraw @a {"text":" "}
execute if entity @e[tag=timer,scores={clicktimer=1}] unless entity @e[type=armor_stand,tag=timer,scores={gametimer=100..}] run scoreboard players enable @a trigger
execute if entity @e[type=armor_stand,tag=timer,scores={clicktimer=1}] run tellraw @a ["",{"text":"-+=","obfuscated":true},{"text":"Please choose a Team","bold":true},{"text":"=+-","obfuscated":true},{"text":"\n\n"},{"text":"     ","color":"red"},{"text":"[RED]","color":"red","clickEvent":{"action":"run_command","value":"/trigger trigger set 1"}},{"text":"               ","color":"red"},{"text":"[BLUE]","color":"dark_blue","clickEvent":{"action":"run_command","value":"/trigger trigger set 2"}},{"text":"\n\n"},{"text":"     ","color":"green"},{"text":"[GREEN]","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 3"}},{"text":"          ","color":"green"},{"text":"[YELLOW]","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger trigger set 4"}},{"text":"\n\n"},{"text":"     ","color":"aqua"},{"text":"[AQUA]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger trigger set 5"}},{"text":"             ","color":"aqua"},{"text":"[WHITE]","clickEvent":{"action":"run_command","value":"/trigger trigger set 6"}},{"text":"\n\n"},{"text":"     ","color":"light_purple"},{"text":"[PINK]","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger trigger set 7"}},{"text":"              ","color":"light_purple"},{"text":"[GRAY]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger trigger set 8"}},{"text":"\n\n            "},{"text":"[SPECTATOR]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger trigger set 9"}}]
scoreboard players add @e[type=armor_stand,tag=timer,scores={clicktimer=1..}] clicktimer 1

execute if entity @a[scores={trigger=1..}] run function bw:trigger

execute as @e[tag=timer,type=armor_stand,scores={event=9600..}] at @s run scoreboard players reset @s event
execute unless entity @e[tag=timer,type=armor_stand,scores={clicktimer=1..}] run scoreboard players reset @e[tag=timer,type=armor_stand] gametimer
execute unless entity @a[tag=!spec,tag=!red,tag=!blue,tag=!green,tag=!yellow,tag=!gray,tag=!white,tag=!aqua,tag=!pink] run scoreboard players add @e[type=armor_stand,tag=timer] gametimer 1
execute if entity @e[tag=timer,type=armor_stand,scores={gametimer=1}] run gamemode adventure @a[tag=!spec]
execute as @e[tag=timer,type=armor_stand] at @s if entity @e[type=armor_stand,tag=timer,scores={gametimer=0..}] unless entity @e[type=armor_stand,tag=timer,scores={gametimer=38401..}] run scoreboard players add @s event 1

execute if entity @e[type=armor_stand,tag=timer,scores={gametimer=1..161}] run function bw:start


execute as @e[type=armor_stand,tag=diaF] at @s if entity @e[type=armor_stand,tag=timer,scores={gametimer=9600}] run tag @s add level2
execute as @e[type=armor_stand,tag=timer] at @s if entity @e[type=armor_stand,tag=timer,scores={gametimer=9600}] run tellraw @a {"text":"Diamond Generators Are Now Tier 2","color":"aqua","bold":"true"}
execute as @e[type=armor_stand,tag=emeraldF] at @s if entity @e[type=armor_stand,tag=timer,scores={gametimer=19200}] run tag @s add level2
execute as @e[type=armor_stand,tag=timer] at @s if entity @e[type=armor_stand,tag=timer,scores={gametimer=19200}] run tellraw @a {"text":"Emerald Generators Are Now Tier 2","color":"green","bold":"true"}
execute as @e[type=armor_stand,tag=diaF] at @s if entity @e[type=armor_stand,tag=timer,scores={gametimer=28800}] run tag @s add level3
execute as @e[type=armor_stand,tag=timer] at @s if entity @e[type=armor_stand,tag=timer,scores={gametimer=28800}] run tellraw @a {"text":"Diamond Generators Are Now Tier 3","color":"aqua","bold":"true"}
execute as @e[type=armor_stand,tag=emeraldF] at @s if entity @e[type=armor_stand,tag=timer,scores={gametimer=38400}] run tag @s add level3
execute as @e[type=armor_stand,tag=timer] at @s if entity @e[type=armor_stand,tag=timer,scores={gametimer=38400}] run tellraw @a {"text":"Emerald Generators Are Now Tier 3","color":"green","bold":"true"}
execute as @e[tag=forge,type=armor_stand,tag=level1,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=30}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level1,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=60}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level1,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=90}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level1,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=120}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level1,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=150}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level1,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=180}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level1,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=210}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level1,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=240}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level1,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=270}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level1,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=300}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level1,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=330}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level1,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=360}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level1,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=390}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level1,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=420}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level1,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=450}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level1,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=480}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level1,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=510}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level1,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=540}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level1,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=570}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level1,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=600}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level1,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=630}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level1,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=660}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level1,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=690}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level1,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=720}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level1,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=750}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level1,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=780}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level1,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=810}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level1,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=840}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level1,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=870}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level1,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=900}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level1,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=930}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level1,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=960}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level1,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=990}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level1,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=1020}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level1,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=1050}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level1,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=1080}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level1,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=1110}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level1,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=1140}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level1,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=1170}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level1,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=1200}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level1,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=90}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:gold_ingot",Count:16b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level1,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=180}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:gold_ingot",Count:16b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level1,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=270}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:gold_ingot",Count:16b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level1,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=360}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:gold_ingot",Count:16b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level1,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=510}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:gold_ingot",Count:16b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level1,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=660}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:gold_ingot",Count:16b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level1,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=690}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:gold_ingot",Count:16b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level1,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=780}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:gold_ingot",Count:16b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level1,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=870}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:gold_ingot",Count:16b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level1,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=960}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:gold_ingot",Count:16b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level1,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=1050}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:gold_ingot",Count:16b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level1,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=1140}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:gold_ingot",Count:16b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level2,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=30}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level2,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=60}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level2,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=90}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level2,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=120}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level2,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=150}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level2,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=180}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level2,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=210}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level2,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=240}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level2,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=270}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level2,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=300}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level2,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=330}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level2,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=360}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level2,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=390}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level2,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=420}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level2,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=450}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level2,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=480}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level2,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=510}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level2,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=540}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level2,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=570}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level2,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=600}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level2,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=630}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level2,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=660}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level2,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=690}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level2,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=720}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level2,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=750}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level2,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=780}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level2,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=810}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level2,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=840}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level2,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=870}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level2,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=900}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level2,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=930}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level2,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=960}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level2,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=990}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level2,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=1020}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level2,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=1050}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level2,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=1080}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level2,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=1110}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level2,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=1140}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level2,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=1170}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level2,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=1200}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:iron_ingot",Count:48b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level3,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=90}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:gold_ingot",Count:16b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level3,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=180}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:gold_ingot",Count:16b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level3,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=270}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:gold_ingot",Count:16b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level3,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=360}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:gold_ingot",Count:16b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level3,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=510}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:gold_ingot",Count:16b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level3,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=660}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:gold_ingot",Count:16b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level3,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=690}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:gold_ingot",Count:16b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level3,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=780}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:gold_ingot",Count:16b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level3,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=870}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:gold_ingot",Count:16b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level3,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=960}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:gold_ingot",Count:16b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level3,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=1050}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:gold_ingot",Count:16b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level3,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=1140}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:gold_ingot",Count:16b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:gold_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level4,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=90}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:emerald",Count:2b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:emerald",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level4,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=360}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:emerald",Count:2b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:emerald",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level4,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=690}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:emerald",Count:2b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:emerald",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[tag=forge,type=armor_stand,tag=level4,tag=active] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=960}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:emerald",Count:2b}}] run summon item ~ ~ ~ {PickupDelay:20,Tags:["forgeI"],Item:{id:"minecraft:emerald",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}

execute as @e[type=armor_stand,tag=diaF,tag=level1] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=1199}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:diamond",Count:4b}}] run summon item ~ ~ ~ {Item:{id:"minecraft:diamond",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[type=armor_stand,tag=diaF,tag=level1] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=600}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:diamond",Count:4b}}] run summon item ~ ~ ~ {Item:{id:"minecraft:diamond",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[type=armor_stand,tag=diaF,tag=level2] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=300}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:diamond",Count:4b}}] run summon item ~ ~ ~ {Item:{id:"minecraft:diamond",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[type=armor_stand,tag=diaF,tag=level3] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=900}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:diamond",Count:4b}}] run summon item ~ ~ ~ {Item:{id:"minecraft:diamond",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[type=armor_stand,tag=diaF,tag=level3] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=150}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:diamond",Count:4b}}] run summon item ~ ~ ~ {Item:{id:"minecraft:diamond",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[type=armor_stand,tag=emeraldF,tag=level1] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=1199}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:emerald",Count:2b}}] run summon item ~ ~ ~ {Item:{id:"minecraft:emerald",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[type=armor_stand,tag=emeraldF,tag=level2] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=800}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:emerald",Count:2b}}] run summon item ~ ~ ~ {Item:{id:"minecraft:emerald",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[type=armor_stand,tag=emeraldF,tag=level3] at @s if entity @e[type=armor_stand,tag=timer,scores={forge=400}] unless entity @e[type=item,distance=..2,nbt={Item:{id:"minecraft:emerald",Count:2b}}] run summon item ~ ~ ~ {Item:{id:"minecraft:emerald",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}

execute as @a[tag=alive,scores={bwdeath=1}] at @s run gamemode spectator @s
execute as @a[tag=alive,scores={bwdeath=1..}] at @s run scoreboard players add @s death 1

### Drop Items Upon Death
execute as @a[scores={bwdeath=1..,death=1}] at @s unless entity @e[tag=dead,distance=..1] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["dead"]}
execute as @e[type=armor_stand,tag=dead] at @s unless entity @e[type=item,distance=..1.5,nbt={Item:{id:"minecraft:iron_ingot"}}] run summon item ~ ~ ~ {Item:{id:"minecraft:iron_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[type=armor_stand,tag=dead] at @s unless entity @e[type=item,distance=..1.5,nbt={Item:{id:"minecraft:gold_ingot"}}] run summon item ~ ~ ~ {Item:{id:"minecraft:gold_ingot",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[type=armor_stand,tag=dead] at @s unless entity @e[type=item,distance=..1.5,nbt={Item:{id:"minecraft:diamond"}}] run summon item ~ ~ ~ {Item:{id:"minecraft:diamond",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[type=armor_stand,tag=dead] at @s unless entity @e[type=item,distance=..1.5,nbt={Item:{id:"minecraft:emerald"}}] run summon item ~ ~ ~ {Item:{id:"minecraft:emerald",Count:1b,tag:{CanDestroy:["#break"],HideFlags:8}}}
execute as @e[type=armor_stand,tag=dead] at @s store result entity @e[limit=1,type=item,distance=..1.5,nbt={Item:{id:"minecraft:emerald"}}] Item.Count byte 1 run scoreboard players get @a[limit=1,scores={bwdeath=1..,death=1}] emeraldCount
execute as @e[type=armor_stand,tag=dead] at @s store result entity @e[limit=1,type=item,distance=..1.5,nbt={Item:{id:"minecraft:iron_ingot"}}] Item.Count byte 1 run scoreboard players get @a[limit=1,scores={bwdeath=1..,death=1}] ironCount
execute as @e[type=armor_stand,tag=dead] at @s store result entity @e[limit=1,type=item,distance=..1.5,nbt={Item:{id:"minecraft:gold_ingot"}}] Item.Count byte 1 run scoreboard players get @a[limit=1,scores={bwdeath=1..,death=1}] goldCount
execute as @e[type=armor_stand,tag=dead] at @s store result entity @e[limit=1,type=item,distance=..1.5,nbt={Item:{id:"minecraft:diamond"}}] Item.Count byte 1 run scoreboard players get @a[limit=1,scores={bwdeath=1..,death=1}] diaCount
kill @e[type=armor_stand,tag=dead]

###Pickaxe Downgrade

scoreboard objectives add pick dummy

scoreboard players set @a[tag=diapick] pick 3
scoreboard players set @a[tag=ironpick] pick 2
scoreboard players set @a[tag=stonepick] pick 1
scoreboard players set @a[tag=woodpick] pick 0

execute as @a[scores={bwdeath=1..,death=5,pick=1}] at @s run give @s minecraft:wooden_pickaxe{CanDestroy:["#break"],HideFlags:12,Unbreakable:1b,Enchantments:[{id:"minecraft:efficiency",lvl:1}]} 1
execute as @a[scores={bwdeath=1..,death=5,pick=2}] at @s run give @s minecraft:stone_pickaxe{CanDestroy:["#break"],HideFlags:12,Unbreakable:1b,Enchantments:[{id:"minecraft:efficiency",lvl:2}]} 1
execute as @a[scores={bwdeath=1..,death=5,pick=3}] at @s run give @s minecraft:iron_pickaxe{CanDestroy:["#break"],HideFlags:12,Unbreakable:1b,Enchantments:[{id:"minecraft:efficiency",lvl:3}]} 1

execute as @a[scores={bwdeath=1..,death=5,pick=1}] at @s run tag @s add woodpick
execute as @a[scores={bwdeath=1..,death=5,pick=2}] at @s run tag @s add stonepick
execute as @a[scores={bwdeath=1..,death=5,pick=3}] at @s run tag @s add ironpick

###Axe Downgrade

scoreboard objectives add axe dummy

scoreboard players set @a[tag=diaaxe] axe 3
scoreboard players set @a[tag=ironaxe] axe 2
scoreboard players set @a[tag=stoneaxe] axe 1
scoreboard players set @a[tag=woodaxe] axe 0

execute as @a[scores={bwdeath=1..,death=5,axe=1}] at @s run give @s minecraft:wooden_axe{CanDestroy:["#break"],HideFlags:12,Unbreakable:1b,Enchantments:[{id:"minecraft:efficiency",lvl:1}]} 1
execute as @a[scores={bwdeath=1..,death=5,axe=2}] at @s run give @s minecraft:stone_axe{CanDestroy:["#break"],HideFlags:12,Unbreakable:1b,Enchantments:[{id:"minecraft:efficiency",lvl:2}]} 1
execute as @a[scores={bwdeath=1..,death=5,axe=3}] at @s run give @s minecraft:iron_axe{CanDestroy:["#break"],HideFlags:12,Unbreakable:1b,Enchantments:[{id:"minecraft:efficiency",lvl:3}]} 1

execute as @a[scores={bwdeath=1..,death=5,axe=1}] at @s run tag @s add woodaxe
execute as @a[scores={bwdeath=1..,death=5,axe=2}] at @s run tag @s add stoneaxe
execute as @a[scores={bwdeath=1..,death=5,axe=3}] at @s run tag @s add ironaxe

execute if entity @a[scores={bwdeath=1..}] run function bw:death


execute unless entity @a[tag=red] run scoreboard players add @e[type=armor_stand,tag=redB] eliminated 1
execute as @e[tag=redB,type=armor_stand,scores={elimitnated=1}] run tellraw @a ["",{"text":"TEAM ELIMINATED >","bold":true,"color":"white"},{"text":" Red Team","color":"dark_red"},{"text":" has been eliminated","color":"red"}]
execute unless entity @a[tag=blue] run scoreboard players add @e[type=armor_stand,tag=blueB] eliminated 1
execute as @e[tag=blueB,type=armor_stand,scores={elimitnated=1}] run tellraw @a ["",{"text":"TEAM ELIMINATED >","bold":true,"color":"white"},{"text":" Blue Team","color":"blue"},{"text":" has been eliminated","color":"red"}]
execute unless entity @a[tag=green] run scoreboard players add @e[type=armor_stand,tag=greenB] eliminated 1
execute as @e[tag=greenB,type=armor_stand,scores={elimitnated=1}] run tellraw @a ["",{"text":"TEAM ELIMINATED >","bold":true,"color":"white"},{"text":" Green Team","color":"green"},{"text":" has been eliminated","color":"red"}]
execute unless entity @a[tag=yellow] run scoreboard players add @e[type=armor_stand,tag=yellowB] eliminated 1
execute as @e[tag=yellowB,type=armor_stand,scores={elimitnated=1}] run tellraw @a ["",{"text":"TEAM ELIMINATED >","bold":true,"color":"white"},{"text":" Yellow Team","color":"yellow"},{"text":" has been eliminated","color":"red"}]
execute unless entity @a[tag=gray] run scoreboard players add @e[type=armor_stand,tag=grayB] eliminated 1
execute as @e[tag=grayB,type=armor_stand,scores={elimitnated=1}] run tellraw @a ["",{"text":"TEAM ELIMINATED >","bold":true,"color":"white"},{"text":" Gray Team","color":"gray"},{"text":" has been eliminated","color":"red"}]
execute unless entity @a[tag=white] run scoreboard players add @e[type=armor_stand,tag=whiteB] eliminated 1
execute as @e[tag=whiteB,type=armor_stand,scores={elimitnated=1}] run tellraw @a ["",{"text":"TEAM ELIMINATED >","bold":true,"color":"white"},{"text":" White Team","color":"white"},{"text":" has been eliminated","color":"red"}]
execute unless entity @a[tag=aqua] run scoreboard players add @e[type=armor_stand,tag=aquaB] eliminated 1
execute as @e[tag=aquaB,type=armor_stand,scores={elimitnated=1}] run tellraw @a ["",{"text":"TEAM ELIMINATED >","bold":true,"color":"white"},{"text":" Aqua Team","color":"aqua"},{"text":" has been eliminated","color":"red"}]
execute unless entity @a[tag=pink] run scoreboard players add @e[type=armor_stand,tag=pinkB] eliminated 1
execute as @e[tag=pinkB,type=armor_stand,scores={elimitnated=1}] run tellraw @a ["",{"text":"TEAM ELIMINATED >","bold":true,"color":"white"},{"text":" Pink Team","color":"pink"},{"text":" has been eliminated","color":"red"}]
execute as @a[scores={bwdeath=1,death=1..4}] at @s run clear @s iron_ingot
execute as @a[scores={bwdeath=1,death=1..4}] at @s run clear @s gold_ingot
execute as @a[scores={bwdeath=1,death=1..4}] at @s run clear @s emerald
execute as @a[scores={bwdeath=1,death=1..4}] at @s run clear @s diamond
execute as @a[scores={bwdeath=1,death=1..4}] at @s run clear @s egg
execute as @a[scores={bwdeath=1,death=1..4}] at @s run clear @s tnt
execute as @a[scores={bwdeath=1,death=1..4}] at @s run clear @s ender_pearl
execute as @a[scores={bwdeath=1,death=1..4}] at @s run clear @s #wool
execute as @a[scores={bwdeath=1,death=1..4}] at @s run clear @s oak_planks
execute as @a[scores={bwdeath=1,death=1..4}] at @s run clear @s end_stone
execute as @a[scores={bwdeath=1,death=1..4}] at @s run clear @s sandstone
execute as @a[scores={bwdeath=1,death=1..4}] at @s run clear @s obsidian
execute as @a[scores={bwdeath=1,death=1..4}] at @s run clear @s red_stained_glass
execute as @a[scores={bwdeath=1,death=1..4}] at @s run clear @s blue_stained_glass
execute as @a[scores={bwdeath=1,death=1..4}] at @s run clear @s lime_stained_glass
execute as @a[scores={bwdeath=1,death=1..4}] at @s run clear @s yellow_stained_glass
execute as @a[scores={bwdeath=1,death=1..4}] at @s run clear @s gray_stained_glass
execute as @a[scores={bwdeath=1,death=1..4}] at @s run clear @s white_stained_glass
execute as @a[scores={bwdeath=1,death=1..4}] at @s run clear @s light_blue_stained_glass
execute as @a[scores={bwdeath=1,death=1..4}] at @s run clear @s pink_stained_glass
execute as @a[scores={bwdeath=1,death=1..4}] at @s run clear @s stone_sword
execute as @a[scores={bwdeath=1,death=1..4}] at @s run clear @s iron_sword
execute as @a[scores={bwdeath=1,death=1..4}] at @s run clear @s diamond_sword
execute as @a[scores={bwdeath=1,death=1..4}] at @s run clear @s stone_pickaxe
execute as @a[scores={bwdeath=1,death=1..4}] at @s run clear @s iron_pickaxe
execute as @a[scores={bwdeath=1,death=1..4}] at @s run clear @s diamond_pickaxe
execute as @a[scores={bwdeath=1,death=1..4}] at @s run clear @s stone_axe
execute as @a[scores={bwdeath=1,death=1..4}] at @s run clear @s iron_axe
execute as @a[scores={bwdeath=1,death=1..4}] at @s run clear @s diamond_axe
execute as @a[scores={bwdeath=1,death=1..4}] at @s run clear @s golden_apple
execute as @a[scores={bwdeath=1,death=1..4}] at @s run clear @s potion
execute as @a[scores={bwdeath=1,death=1..4}] at @s run clear @s bow
execute as @a[scores={bwdeath=1,death=1..4}] at @s run clear @s arrow
execute as @a[scores={bwdeath=1,death=1..4}] at @s run clear @s snowball

execute as @a[scores={bwdeath=1}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:wooden_sword"}]}] run give @s[tag=red] minecraft:wooden_sword{CanDestroy:["#breakr"],HideFlags:14,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:10,Operation:0,UUIDLeast:954921,UUIDMost:548372},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:5,Operation:0,UUIDLeast:135599,UUIDMost:893074,Slot:"mainhand"}]} 1
execute as @a[scores={bwdeath=1}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:wooden_sword"}]}] run give @s[tag=blue] minecraft:wooden_sword{CanDestroy:["#breakb"],HideFlags:14,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:10,Operation:0,UUIDLeast:954921,UUIDMost:548372},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:5,Operation:0,UUIDLeast:135599,UUIDMost:893074,Slot:"mainhand"}]} 1
execute as @a[scores={bwdeath=1}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:wooden_sword"}]}] run give @s[tag=green] minecraft:wooden_sword{CanDestroy:["#breakg"],HideFlags:14,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:10,Operation:0,UUIDLeast:954921,UUIDMost:548372},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:5,Operation:0,UUIDLeast:135599,UUIDMost:893074,Slot:"mainhand"}]} 1
execute as @a[scores={bwdeath=1}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:wooden_sword"}]}] run give @s[tag=yellow] minecraft:wooden_sword{CanDestroy:["#breaky"],HideFlags:14,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:10,Operation:0,UUIDLeast:954921,UUIDMost:548372},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:5,Operation:0,UUIDLeast:135599,UUIDMost:893074,Slot:"mainhand"}]} 1
execute as @a[scores={bwdeath=1}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:wooden_sword"}]}] run give @s[tag=gray] minecraft:wooden_sword{CanDestroy:["#breakgray"],HideFlags:14,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:10,Operation:0,UUIDLeast:954921,UUIDMost:548372},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:5,Operation:0,UUIDLeast:135599,UUIDMost:893074,Slot:"mainhand"}]} 1
execute as @a[scores={bwdeath=1}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:wooden_sword"}]}] run give @s[tag=white] minecraft:wooden_sword{CanDestroy:["#breakw"],HideFlags:14,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:10,Operation:0,UUIDLeast:954921,UUIDMost:548372},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:5,Operation:0,UUIDLeast:135599,UUIDMost:893074,Slot:"mainhand"}]} 1
execute as @a[scores={bwdeath=1}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:wooden_sword"}]}] run give @s[tag=aqua] minecraft:wooden_sword{CanDestroy:["#breaka"],HideFlags:14,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:10,Operation:0,UUIDLeast:954921,UUIDMost:548372},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:5,Operation:0,UUIDLeast:135599,UUIDMost:893074,Slot:"mainhand"}]} 1
execute as @a[scores={bwdeath=1}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:wooden_sword"}]}] run give @s[tag=pink] minecraft:wooden_sword{CanDestroy:["#breakp"],HideFlags:14,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:10,Operation:0,UUIDLeast:954921,UUIDMost:548372},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:5,Operation:0,UUIDLeast:135599,UUIDMost:893074,Slot:"mainhand"}]} 1


scoreboard objectives add broke dummy
execute as @e[tag=redB,type=armor_stand,tag=bed] at @s unless block ~ ~ ~ red_bed run scoreboard players add @s broke 1
execute as @e[tag=blueB,type=armor_stand,tag=bed] at @s unless block ~ ~ ~ blue_bed run scoreboard players add @s broke 1
execute as @e[tag=greenB,type=armor_stand,tag=bed] at @s unless block ~ ~ ~ lime_bed run scoreboard players add @s broke 1
execute as @e[tag=yellowB,type=armor_stand,tag=bed] at @s unless block ~ ~ ~ yellow_bed run scoreboard players add @s broke 1
execute as @e[tag=grayB,type=armor_stand,tag=bed] at @s unless block ~ ~ ~ gray_bed run scoreboard players add @s broke 1
execute as @e[tag=whiteB,type=armor_stand,tag=bed] at @s unless block ~ ~ ~ white_bed run scoreboard players add @s broke 1
execute as @e[tag=aquaB,type=armor_stand,tag=bed] at @s unless block ~ ~ ~ light_blue_bed run scoreboard players add @s broke 1
execute as @e[tag=pinkB,type=armor_stand,tag=bed] at @s unless block ~ ~ ~ pink_bed run scoreboard players add @s broke 1
execute as @e[type=armor_stand,tag=redB,scores={broke=1}] at @s run title @a[tag=red] title {"text":"Bed Destroyed","color":"red","bold":"true","italic":"true"}
execute as @e[type=armor_stand,tag=redB,scores={broke=1}] at @s run playsound minecraft:entity.wither.death master @a[tag=red] ~ ~ ~ 100 1
execute as @e[type=armor_stand,tag=blueB,scores={broke=1}] at @s run title @a[tag=blue] title {"text":"Bed Destroyed","color":"red","bold":"true","italic":"true"}
execute as @e[type=armor_stand,tag=blueB,scores={broke=1}] at @s run playsound minecraft:entity.wither.death master @a[tag=blue] ~ ~ ~ 100 1
execute as @e[type=armor_stand,tag=greenB,scores={broke=1}] at @s run title @a[tag=green] title {"text":"Bed Destroyed","color":"red","bold":"true","italic":"true"}
execute as @e[type=armor_stand,tag=greenB,scores={broke=1}] at @s run playsound minecraft:entity.wither.death master @a[tag=green] ~ ~ ~ 100 1
execute as @e[type=armor_stand,tag=yellowB,scores={broke=1}] at @s run title @a[tag=yellow] title {"text":"Bed Destroyed","color":"red","bold":"true","italic":"true"}
execute as @e[type=armor_stand,tag=yellowB,scores={broke=1}] at @s run playsound minecraft:entity.wither.death master @a[tag=yellow] ~ ~ ~ 100 1
execute as @e[type=armor_stand,tag=grayB,scores={broke=1}] at @s run title @a[tag=gray] title {"text":"Bed Destroyed","color":"red","bold":"true","italic":"true"}
execute as @e[type=armor_stand,tag=grayB,scores={broke=1}] at @s run playsound minecraft:entity.wither.death master @a[tag=gray] ~ ~ ~ 100 1
execute as @e[type=armor_stand,tag=whiteB,scores={broke=1}] at @s run title @a[tag=white] title {"text":"Bed Destroyed","color":"red","bold":"true","italic":"true"}
execute as @e[type=armor_stand,tag=whiteB,scores={broke=1}] at @s run playsound minecraft:entity.wither.death master @a[tag=white] ~ ~ ~ 100 1
execute as @e[type=armor_stand,tag=aquaB,scores={broke=1}] at @s run title @a[tag=aqua] title {"text":"Bed Destroyed","color":"red","bold":"true","italic":"true"}
execute as @e[type=armor_stand,tag=aquaB,scores={broke=1}] at @s run playsound minecraft:entity.wither.death master @a[tag=aqua] ~ ~ ~ 100 1
execute as @e[type=armor_stand,tag=pinkB,scores={broke=1}] at @s run title @a[tag=pink] title {"text":"Bed Destroyed","color":"red","bold":"true","italic":"true"}
execute as @e[type=armor_stand,tag=pinkB,scores={broke=1}] at @s run playsound minecraft:entity.wither.death master @a[tag=pink] ~ ~ ~ 100 1
execute as @e[type=armor_stand,tag=redB,scores={broke=1}] at @s if entity @e[tag=timer,type=armor_stand,scores={gametimer=160..}] run tellraw @a ["",{"text":"BED DESTRUCTION >","bold":true,"color":"white"},{"text":" Red Bed","color":"dark_red"},{"text":" has been destroyed","color":"red"}]
execute as @e[type=armor_stand,tag=blueB,scores={broke=1}] at @s if entity @e[tag=timer,type=armor_stand,scores={gametimer=160..}] run tellraw @a ["",{"text":"BED DESTRUCTION >","bold":true,"color":"white"},{"text":" Blue Bed","color":"dark_blue"},{"text":" has been destroyed","color":"red"}]
execute as @e[type=armor_stand,tag=greenB,scores={broke=1}] at @s if entity @e[tag=timer,type=armor_stand,scores={gametimer=160..}] run tellraw @a ["",{"text":"BED DESTRUCTION >","bold":true,"color":"white"},{"text":" Green Bed","color":"green"},{"text":" has been destroyed","color":"red"}]
execute as @e[type=armor_stand,tag=yellowB,scores={broke=1}] at @s if entity @e[tag=timer,type=armor_stand,scores={gametimer=160..}] run tellraw @a ["",{"text":"BED DESTRUCTION >","bold":true,"color":"white"},{"text":" Yellow Bed","color":"yellow"},{"text":" has been destroyed","color":"red"}]
execute as @e[type=armor_stand,tag=grayB,scores={broke=1}] at @s if entity @e[tag=timer,type=armor_stand,scores={gametimer=160..}] run tellraw @a ["",{"text":"BED DESTRUCTION >","bold":true,"color":"white"},{"text":" Gray Bed","color":"gray"},{"text":" has been destroyed","color":"red"}]
execute as @e[type=armor_stand,tag=whiteB,scores={broke=1}] at @s if entity @e[tag=timer,type=armor_stand,scores={gametimer=160..}] run tellraw @a ["",{"text":"BED DESTRUCTION >","bold":true,"color":"white"},{"text":" White Bed","color":"white"},{"text":" has been destroyed","color":"red"}]
execute as @e[type=armor_stand,tag=aquaB,scores={broke=1}] at @s if entity @e[tag=timer,type=armor_stand,scores={gametimer=160..}] run tellraw @a ["",{"text":"BED DESTRUCTION >","bold":true,"color":"white"},{"text":" Aqua Bed","color":"aqua"},{"text":" has been destroyed","color":"red"}]
execute as @e[type=armor_stand,tag=pinkB,scores={broke=1}] at @s if entity @e[tag=timer,type=armor_stand,scores={gametimer=160..}] run tellraw @a ["",{"text":"BED DESTRUCTION >","bold":true,"color":"white"},{"text":" Pink Bed","color":"light_purple"},{"text":" has been destroyed","color":"red"}]

execute as @e[type=armor_stand,tag=redB,scores={broke=1..}] at @s if entity @e[type=armor_stand,tag=timer,scores={gametimer=180..}] run tag @a[tag=red,tag=!alive,scores={bwdeath=1..}] remove red
execute as @e[type=armor_stand,tag=blueB,scores={broke=1..}] at @s if entity @e[type=armor_stand,tag=timer,scores={gametimer=180..}] run tag @a[tag=blue,tag=!alive,scores={bwdeath=1..}] remove blue
execute as @e[type=armor_stand,tag=greenB,scores={broke=1..}] at @s if entity @e[type=armor_stand,tag=timer,scores={gametimer=180..}] run tag @a[tag=green,tag=!alive,scores={bwdeath=1..}] remove green
execute as @e[type=armor_stand,tag=yellowB,scores={broke=1..}] at @s if entity @e[type=armor_stand,tag=timer,scores={gametimer=180..}] run tag @a[tag=yellow,tag=!alive,scores={bwdeath=1..}] remove yellow
execute as @e[type=armor_stand,tag=grayB,scores={broke=1..}] at @s if entity @e[type=armor_stand,tag=timer,scores={gametimer=180..}] run tag @a[tag=gray,tag=!alive,scores={bwdeath=1..}] remove gray
execute as @e[type=armor_stand,tag=whiteB,scores={broke=1..}] at @s if entity @e[type=armor_stand,tag=timer,scores={gametimer=180..}] run tag @a[tag=white,tag=!alive,scores={bwdeath=1..}] remove white
execute as @e[type=armor_stand,tag=aquaB,scores={broke=1..}] at @s if entity @e[type=armor_stand,tag=timer,scores={gametimer=180..}] run tag @a[tag=aqua,tag=!alive,scores={bwdeath=1..}] remove aqua
execute as @e[type=armor_stand,tag=pinkB,scores={broke=1..}] at @s if entity @e[type=armor_stand,tag=timer,scores={gametimer=180..}] run tag @a[tag=pink,tag=!alive,scores={bwdeath=1..}] remove pink

execute as @a[tag=red] at @s if entity @e[tag=redB,type=armor_stand,scores={broke=1..}] if entity @e[tag=timer,type=armor_stand,scores={gametimer=180..}] unless entity @s[scores={death=1..}] run tag @s remove alive
execute as @a[tag=blue] at @s if entity @e[tag=blueB,type=armor_stand,scores={broke=1..}] if entity @e[tag=timer,type=armor_stand,scores={gametimer=180..}] unless entity @s[scores={death=1..}] run tag @s remove alive
execute as @a[tag=green] at @s if entity @e[tag=greenB,type=armor_stand,scores={broke=1..}] if entity @e[tag=timer,type=armor_stand,scores={gametimer=180..}] unless entity @s[scores={death=1..}] run tag @s remove alive
execute as @a[tag=yellow] at @s if entity @e[tag=yellowB,type=armor_stand,scores={broke=1..}] if entity @e[tag=timer,type=armor_stand,scores={gametimer=180..}] unless entity @s[scores={death=1..}] run tag @s remove alive
execute as @a[tag=gray] at @s if entity @e[tag=grayB,type=armor_stand,scores={broke=1..}] if entity @e[tag=timer,type=armor_stand,scores={gametimer=180..}] unless entity @s[scores={death=1..}] run tag @s remove alive
execute as @a[tag=white] at @s if entity @e[tag=whiteB,type=armor_stand,scores={broke=1..}] if entity @e[tag=timer,type=armor_stand,scores={gametimer=180..}] unless entity @s[scores={death=1..}] run tag @s remove alive
execute as @a[tag=aqua] at @s if entity @e[tag=aquaB,type=armor_stand,scores={broke=1..}] if entity @e[tag=timer,type=armor_stand,scores={gametimer=180..}] unless entity @s[scores={death=1..}] run tag @s remove alive
execute as @a[tag=pink] at @s if entity @e[tag=pinkB,type=armor_stand,scores={broke=1..}] if entity @e[tag=timer,type=armor_stand,scores={gametimer=180..}] unless entity @s[scores={death=1..}] run tag @s remove alive

execute if entity @e[type=armor_stand,tag=timer,scores={gametimer=100..}] unless entity @a[tag=blue] unless entity @a[tag=green] unless entity @a[tag=yellow] unless entity @a[tag=gray] unless entity @a[tag=white] unless entity @a[tag=aqua] unless entity @a[tag=pink] run function bw:end
execute if entity @e[type=armor_stand,tag=timer,scores={gametimer=100..}] unless entity @a[tag=red] unless entity @a[tag=green] unless entity @a[tag=yellow] unless entity @a[tag=gray] unless entity @a[tag=white] unless entity @a[tag=aqua] unless entity @a[tag=pink] run function bw:end
execute if entity @e[type=armor_stand,tag=timer,scores={gametimer=100..}] unless entity @a[tag=blue] unless entity @a[tag=red] unless entity @a[tag=yellow] unless entity @a[tag=gray] unless entity @a[tag=white] unless entity @a[tag=aqua] unless entity @a[tag=pink] run function bw:end
execute if entity @e[type=armor_stand,tag=timer,scores={gametimer=100..}] unless entity @a[tag=blue] unless entity @a[tag=green] unless entity @a[tag=red] unless entity @a[tag=gray] unless entity @a[tag=white] unless entity @a[tag=aqua] unless entity @a[tag=pink] run function bw:end
execute if entity @e[type=armor_stand,tag=timer,scores={gametimer=100..}] unless entity @a[tag=blue] unless entity @a[tag=green] unless entity @a[tag=yellow] unless entity @a[tag=red] unless entity @a[tag=white] unless entity @a[tag=aqua] unless entity @a[tag=pink] run function bw:end
execute if entity @e[type=armor_stand,tag=timer,scores={gametimer=100..}] unless entity @a[tag=blue] unless entity @a[tag=green] unless entity @a[tag=yellow] unless entity @a[tag=gray] unless entity @a[tag=red] unless entity @a[tag=aqua] unless entity @a[tag=pink] run function bw:end
execute if entity @e[type=armor_stand,tag=timer,scores={gametimer=100..}] unless entity @a[tag=blue] unless entity @a[tag=green] unless entity @a[tag=yellow] unless entity @a[tag=gray] unless entity @a[tag=white] unless entity @a[tag=red] unless entity @a[tag=pink] run function bw:end
execute if entity @e[type=armor_stand,tag=timer,scores={gametimer=100..}] unless entity @a[tag=blue] unless entity @a[tag=green] unless entity @a[tag=yellow] unless entity @a[tag=gray] unless entity @a[tag=white] unless entity @a[tag=aqua] unless entity @a[tag=red] run function bw:end

execute as @a at @s unless entity @e[tag=clear,distance=..17] run summon armor_stand ~ ~ ~ {Tags:["clear"],NoGravity:1b,Invisible:1b,Marker:1b}
execute as @e[type=egg] at @s unless entity @e[tag=clear,distance=..14] run summon armor_stand ~ ~ ~ {Tags:["clear"],NoGravity:1b,Invisible:1b,Marker:1b}
execute as @a at @s if entity @e[type=armor_stand,tag=timer,scores={gametimer=..1}] run tag @e[tag=clear] add clear1
execute as @e[tag=clear1] at @s run fill ~15 ~15 ~15 ~-15 ~-15 ~-15 air replace #break
execute as @a at @s if entity @e[tag=timer,type=armor_stand,scores={gametimer=2}] run kill @e[tag=clear]

scoreboard players add @e[type=armor_stand,tag=timer] tnt 1
execute as @a[scores={tnt=1}] at @s run fill ~5 ~5 ~5 ~-5 ~-5 ~-5 redstone_block replace air
execute as @a[scores={tnt=1}] at @s run fill ~5 ~5 ~5 ~-5 ~-5 ~-5 air replace redstone_block
execute as @a[scores={tnt=1..}] at @s run scoreboard players reset @s tnt
execute as @e[type=tnt] at @s run tag @s add T
scoreboard players add @e[tag=T] forge 1
execute as @e[tag=T,scores={forge=50}] at @s run particle explosion ~ ~ ~ 1 1 1 1 0 force @a
execute as @e[tag=T,scores={forge=50}] at @s unless entity @e[tag=cTNT,distance=..1.3] run summon creeper ~ ~ ~ {Silent:1b,ActiveEffects:[{Id:25b,Amplifier:0b,Duration:2,ShowParticles:0b}],ExplosionRadius:4b,Invulnerable:1b,NoAI:1b,Fuse:0,CustomName:"{\"text\":\"tnt\"}",ignited:1b,Tags:["cTNT"]}
kill @e[tag=T,scores={forge=50}]
kill @e[type=area_effect_cloud]
execute as @e[tag=cTNT] at @s run particle explosion ~ ~ ~ 1 1 1 1 0 force @a
execute as @e[tag=cTNT] at @s if entity @e[tag=timer,type=armor_stand,scores={tnt=4..}] run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace #wool
execute as @e[tag=cTNT] at @s if entity @e[tag=timer,type=armor_stand,scores={tnt=4..}] run fill ~2 ~3 ~2 ~-2 ~-3 ~-2 air replace oak_planks
execute as @e[tag=cTNT] at @s if entity @e[tag=timer,type=armor_stand,scores={tnt=4..}] run fill ~1.7 ~1.5 ~1.8 ~-1.5 ~-1.8 ~-1.8 air replace end_stone
execute as @e[tag=cTNT] at @s if entity @e[tag=timer,type=armor_stand,scores={tnt=4..}] run fill ~2 ~3 ~3 ~-2 ~-3 ~-2 air replace sandstone

execute as @e[tag=cTNT] at @s if entity @e[tag=timer,type=armor_stand,scores={tnt=3}] run fill ~2 ~3 ~2 ~-2 ~-3 ~-2 air replace #wool
execute as @e[tag=cTNT] at @s if entity @e[tag=timer,type=armor_stand,scores={tnt=3}] run fill ~1.5 ~2 ~1.5 ~-1.5 ~-2 ~-1.5 air replace oak_planks
execute as @e[tag=cTNT] at @s if entity @e[tag=timer,type=armor_stand,scores={tnt=3}] run fill ~1.4 ~1.5 ~1.5 ~-1 ~-1.5 ~-1.5 air replace end_stone
execute as @e[tag=cTNT] at @s if entity @e[tag=timer,type=armor_stand,scores={tnt=..3}] run fill ~1 ~1 ~2 ~-1 ~-2 ~-1 air replace sandstone

execute as @e[tag=cTNT] at @s if entity @e[tag=timer,type=armor_stand,scores={tnt=..2}] run fill ~1 ~2 ~1 ~-2 ~-1 ~-2 air replace #wool
execute as @e[tag=cTNT] at @s if entity @e[tag=timer,type=armor_stand,scores={tnt=..2}] run fill ~1 ~2 ~1 ~-1 ~-2 ~-1 air replace oak_planks
execute as @e[tag=cTNT] at @s if entity @e[tag=timer,type=armor_stand,scores={tnt=..2}] run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace end_stone

execute as @e[tag=cTNT] at @s run playsound entity.generic.explode master @a[distance=..10] ~ ~ ~ 100 1
kill @e[tag=dup,scores={forge=10}]
scoreboard players reset @e[type=armor_stand,tag=timer,scores={tnt=5..}] tnt

execute as @e[type=egg] at @s unless entity @s[scores={forge=2..}] if entity @a[tag=red,distance=..2] run tag @s add redg
execute as @e[type=egg] at @s unless entity @s[scores={forge=2..}] if entity @a[tag=blue,distance=..2] run tag @s add blueg
execute as @e[type=egg] at @s unless entity @s[scores={forge=2..}] if entity @a[tag=green,distance=..2] run tag @s add greeng
execute as @e[type=egg] at @s unless entity @s[scores={forge=2..}] if entity @a[tag=yellow,distance=..2] run tag @s add yellowg
execute as @e[type=egg] at @s unless entity @s[scores={forge=2..}] if entity @a[tag=gray,distance=..2] run tag @s add grayg
execute as @e[type=egg] at @s unless entity @s[scores={forge=2..}] if entity @a[tag=white,distance=..2] run tag @s add whiteg
execute as @e[type=egg] at @s unless entity @s[scores={forge=2..}] if entity @a[tag=aqua,distance=..2] run tag @s add aquag
execute as @e[type=egg] at @s unless entity @s[scores={forge=2..}] if entity @a[tag=pink,distance=..2] run tag @s add pinkg

execute as @e[type=egg,tag=redg] at @s run fill ^1 ^-2 ^ ^ ^-2 ^1 red_wool replace air
execute as @e[type=egg,tag=blueg] at @s run fill ^1 ^-2 ^ ^ ^-2 ^1 blue_wool replace air
execute as @e[type=egg,tag=greeng] at @s run fill ^1 ^-2 ^ ^ ^-2 ^1 lime_wool replace air
execute as @e[type=egg,tag=yellowg] at @s run fill ^1 ^-2 ^ ^ ^-2 ^1 yellow_wool replace air
execute as @e[type=egg,tag=grayg] at @s run fill ^1 ^-2 ^ ^ ^-2 ^1 gray_wool replace air
execute as @e[type=egg,tag=whiteg] at @s run fill ^1 ^-2 ^ ^ ^-2 ^1 white_wool replace air
execute as @e[type=egg,tag=aquag] at @s run fill ^1 ^-2 ^ ^ ^-2 ^1 light_blue_wool replace air
execute as @e[type=egg,tag=pinkg] at @s run fill ^1 ^-2 ^ ^ ^-2 ^1 pink_wool replace air
scoreboard players add @e[type=egg] forge 1
kill @e[type=egg,scores={forge=40}]
kill @e[type=chicken]

execute as @e[type=armor_stand,tag=bed,tag=trap] at @s if entity @a[distance=..8] run function bw:trap

enchant @a[tag=sharp] sharpness 1


execute as @a[tag=red,tag=ironf] at @s run tag @e[tag=redF,type=armor_stand] add level2
execute as @a[tag=red,tag=goldf] at @s run tag @e[tag=redF,type=armor_stand] add level3
execute as @a[tag=red,tag=emf] at @s run tag @e[tag=redF,type=armor_stand] add level4

execute as @a[tag=blue,tag=ironf] at @s run tag @e[tag=blueF,type=armor_stand] add level2
execute as @a[tag=blue,tag=goldf] at @s run tag @e[tag=blueF,type=armor_stand] add level3
execute as @a[tag=blue,tag=emf] at @s run tag @e[tag=blueF,type=armor_stand] add level4

execute as @a[tag=green,tag=ironf] at @s run tag @e[tag=greenF,type=armor_stand] add level2
execute as @a[tag=green,tag=goldf] at @s run tag @e[tag=greenF,type=armor_stand] add level3
execute as @a[tag=green,tag=emf] at @s run tag @e[tag=greenF,type=armor_stand] add level4

execute as @a[tag=yellow,tag=ironf] at @s run tag @e[tag=yellowF,type=armor_stand] add level2
execute as @a[tag=yellow,tag=goldf] at @s run tag @e[tag=yellowF,type=armor_stand] add level3
execute as @a[tag=yellow,tag=emf] at @s run tag @e[tag=yellowF,type=armor_stand] add level4

execute as @a[tag=gray,tag=ironf] at @s run tag @e[tag=grayF,type=armor_stand] add level2
execute as @a[tag=gray,tag=goldf] at @s run tag @e[tag=grayF,type=armor_stand] add level3
execute as @a[tag=gray,tag=emf] at @s run tag @e[tag=grayF,type=armor_stand] add level4

execute as @a[tag=white,tag=ironf] at @s run tag @e[tag=whiteF,type=armor_stand] add level2
execute as @a[tag=white,tag=goldf] at @s run tag @e[tag=whiteF,type=armor_stand] add level3
execute as @a[tag=white,tag=emf] at @s run tag @e[tag=whiteF,type=armor_stand] add level4

execute as @a[tag=aqua,tag=ironf] at @s run tag @e[tag=aquaF,type=armor_stand] add level2
execute as @a[tag=aqua,tag=goldf] at @s run tag @e[tag=aquaF,type=armor_stand] add level3
execute as @a[tag=aqua,tag=emf] at @s run tag @e[tag=aquaF,type=armor_stand] add level4

execute as @a[tag=pink,tag=ironf] at @s run tag @e[tag=pinkF,type=armor_stand] add level2
execute as @a[tag=pink,tag=goldf] at @s run tag @e[tag=pinkF,type=armor_stand] add level3
execute as @a[tag=pink,tag=emf] at @s run tag @e[tag=pinkF,type=armor_stand] add level4

clear @a[gamemode=adventure] glass_bottle


### SCOREBOARD CHANGE DETECTION 

scoreboard objectives add change dummy
execute if entity @e[type=armor_stand,tag=redB,scores={broke=1}] run function bw:score
execute if entity @e[type=armor_stand,tag=blueB,scores={broke=1}] run function bw:score
execute if entity @e[type=armor_stand,tag=greenB,scores={broke=1}] run function bw:score
execute if entity @e[type=armor_stand,tag=yellowB,scores={broke=1}] run function bw:score
execute if entity @e[type=armor_stand,tag=grayB,scores={broke=1}] run function bw:score
execute if entity @e[type=armor_stand,tag=whiteB,scores={broke=1}] run function bw:score
execute if entity @e[type=armor_stand,tag=aquaB,scores={broke=1}] run function bw:score
execute if entity @e[type=armor_stand,tag=pinkB,scores={broke=1}] run function bw:score
execute if entity @e[type=armor_stand,tag=timer,scores={gametimer=100}] run function bw:score

scoreboard objectives add player5 dummy
scoreboard objectives add player4 dummy
scoreboard objectives add player3 dummy
scoreboard objectives add player2 dummy
scoreboard objectives add player1 dummy
scoreboard objectives add player0 dummy

execute if score #red forge matches 5.. run scoreboard players add #red player5 1
execute if score #red forge matches 4 run scoreboard players add #red player4 1
execute if score #red forge matches 3 run scoreboard players add #red player3 1
execute if score #red forge matches 2 run scoreboard players add #red player2 1
execute if score #red forge matches 1 run scoreboard players add #red player1 1
execute if score #red forge matches 0 run scoreboard players add #red player0 1

execute if score #red forge matches 5.. run scoreboard players reset #red player4
execute if score #red forge matches 5.. run scoreboard players reset #red player3
execute if score #red forge matches 5.. run scoreboard players reset #red player2
execute if score #red forge matches 5.. run scoreboard players reset #red player1
execute if score #red forge matches 5.. run scoreboard players reset #red player0

execute if score #red forge matches 4 run scoreboard players reset #red player5
execute if score #red forge matches 4 run scoreboard players reset #red player3
execute if score #red forge matches 4 run scoreboard players reset #red player2
execute if score #red forge matches 4 run scoreboard players reset #red player1
execute if score #red forge matches 4 run scoreboard players reset #red player0

execute if score #red forge matches 3 run scoreboard players reset #red player5
execute if score #red forge matches 3 run scoreboard players reset #red player4
execute if score #red forge matches 3 run scoreboard players reset #red player2
execute if score #red forge matches 3 run scoreboard players reset #red player1
execute if score #red forge matches 3 run scoreboard players reset #red player0

execute if score #red forge matches 2 run scoreboard players reset #red player5
execute if score #red forge matches 2 run scoreboard players reset #red player3
execute if score #red forge matches 2 run scoreboard players reset #red player4
execute if score #red forge matches 2 run scoreboard players reset #red player1
execute if score #red forge matches 2 run scoreboard players reset #red player0

execute if score #red forge matches 1 run scoreboard players reset #red player5
execute if score #red forge matches 1 run scoreboard players reset #red player3
execute if score #red forge matches 1 run scoreboard players reset #red player2
execute if score #red forge matches 1 run scoreboard players reset #red player4
execute if score #red forge matches 1 run scoreboard players reset #red player0

execute if score #red forge matches 0 run scoreboard players reset #red player5
execute if score #red forge matches 0 run scoreboard players reset #red player3
execute if score #red forge matches 0 run scoreboard players reset #red player2
execute if score #red forge matches 0 run scoreboard players reset #red player1
execute if score #red forge matches 0 run scoreboard players reset #red player4

execute if score #blue forge matches 5.. run scoreboard players add #blue player5 1
execute if score #blue forge matches 4 run scoreboard players add #blue player4 1
execute if score #blue forge matches 3 run scoreboard players add #blue player3 1
execute if score #blue forge matches 2 run scoreboard players add #blue player2 1
execute if score #blue forge matches 1 run scoreboard players add #blue player1 1
execute if score #blue forge matches 0 run scoreboard players add #blue player0 1

execute if score #blue forge matches 5.. run scoreboard players reset #blue player4
execute if score #blue forge matches 5.. run scoreboard players reset #blue player3
execute if score #blue forge matches 5.. run scoreboard players reset #blue player2
execute if score #blue forge matches 5.. run scoreboard players reset #blue player1
execute if score #blue forge matches 5.. run scoreboard players reset #blue player0

execute if score #blue forge matches 4 run scoreboard players reset #blue player5
execute if score #blue forge matches 4 run scoreboard players reset #blue player3
execute if score #blue forge matches 4 run scoreboard players reset #blue player2
execute if score #blue forge matches 4 run scoreboard players reset #blue player1
execute if score #blue forge matches 4 run scoreboard players reset #blue player0

execute if score #blue forge matches 3 run scoreboard players reset #blue player5
execute if score #blue forge matches 3 run scoreboard players reset #blue player4
execute if score #blue forge matches 3 run scoreboard players reset #blue player2
execute if score #blue forge matches 3 run scoreboard players reset #blue player1
execute if score #blue forge matches 3 run scoreboard players reset #blue player0

execute if score #blue forge matches 2 run scoreboard players reset #blue player5
execute if score #blue forge matches 2 run scoreboard players reset #blue player3
execute if score #blue forge matches 2 run scoreboard players reset #blue player4
execute if score #blue forge matches 2 run scoreboard players reset #blue player1
execute if score #blue forge matches 2 run scoreboard players reset #blue player0

execute if score #blue forge matches 1 run scoreboard players reset #blue player5
execute if score #blue forge matches 1 run scoreboard players reset #blue player3
execute if score #blue forge matches 1 run scoreboard players reset #blue player2
execute if score #blue forge matches 1 run scoreboard players reset #blue player4
execute if score #blue forge matches 1 run scoreboard players reset #blue player0

execute if score #blue forge matches 0 run scoreboard players reset #blue player5
execute if score #blue forge matches 0 run scoreboard players reset #blue player3
execute if score #blue forge matches 0 run scoreboard players reset #blue player2
execute if score #blue forge matches 0 run scoreboard players reset #blue player1
execute if score #blue forge matches 0 run scoreboard players reset #blue player4

execute if score #green forge matches 5.. run scoreboard players add #green player5 1
execute if score #green forge matches 4 run scoreboard players add #green player4 1
execute if score #green forge matches 3 run scoreboard players add #green player3 1
execute if score #green forge matches 2 run scoreboard players add #green player2 1
execute if score #green forge matches 1 run scoreboard players add #green player1 1
execute if score #green forge matches 0 run scoreboard players add #green player0 1

execute if score #green forge matches 5.. run scoreboard players reset #green player4
execute if score #green forge matches 5.. run scoreboard players reset #green player3
execute if score #green forge matches 5.. run scoreboard players reset #green player2
execute if score #green forge matches 5.. run scoreboard players reset #green player1
execute if score #green forge matches 5.. run scoreboard players reset #green player0

execute if score #green forge matches 4 run scoreboard players reset #green player5
execute if score #green forge matches 4 run scoreboard players reset #green player3
execute if score #green forge matches 4 run scoreboard players reset #green player2
execute if score #green forge matches 4 run scoreboard players reset #green player1
execute if score #green forge matches 4 run scoreboard players reset #green player0

execute if score #green forge matches 3 run scoreboard players reset #green player5
execute if score #green forge matches 3 run scoreboard players reset #green player4
execute if score #green forge matches 3 run scoreboard players reset #green player2
execute if score #green forge matches 3 run scoreboard players reset #green player1
execute if score #green forge matches 3 run scoreboard players reset #green player0

execute if score #green forge matches 2 run scoreboard players reset #green player5
execute if score #green forge matches 2 run scoreboard players reset #green player3
execute if score #green forge matches 2 run scoreboard players reset #green player4
execute if score #green forge matches 2 run scoreboard players reset #green player1
execute if score #green forge matches 2 run scoreboard players reset #green player0

execute if score #green forge matches 1 run scoreboard players reset #green player5
execute if score #green forge matches 1 run scoreboard players reset #green player3
execute if score #green forge matches 1 run scoreboard players reset #green player2
execute if score #green forge matches 1 run scoreboard players reset #green player4
execute if score #green forge matches 1 run scoreboard players reset #green player0

execute if score #green forge matches 0 run scoreboard players reset #green player5
execute if score #green forge matches 0 run scoreboard players reset #green player3
execute if score #green forge matches 0 run scoreboard players reset #green player2
execute if score #green forge matches 0 run scoreboard players reset #green player1
execute if score #green forge matches 0 run scoreboard players reset #green player4

execute if score #yellow forge matches 5.. run scoreboard players add #yellow player5 1
execute if score #yellow forge matches 4 run scoreboard players add #yellow player4 1
execute if score #yellow forge matches 3 run scoreboard players add #yellow player3 1
execute if score #yellow forge matches 2 run scoreboard players add #yellow player2 1
execute if score #yellow forge matches 1 run scoreboard players add #yellow player1 1
execute if score #yellow forge matches 0 run scoreboard players add #yellow player0 1

execute if score #yellow forge matches 5.. run scoreboard players reset #yellow player4
execute if score #yellow forge matches 5.. run scoreboard players reset #yellow player3
execute if score #yellow forge matches 5.. run scoreboard players reset #yellow player2
execute if score #yellow forge matches 5.. run scoreboard players reset #yellow player1
execute if score #yellow forge matches 5.. run scoreboard players reset #yellow player0

execute if score #yellow forge matches 4 run scoreboard players reset #yellow player5
execute if score #yellow forge matches 4 run scoreboard players reset #yellow player3
execute if score #yellow forge matches 4 run scoreboard players reset #yellow player2
execute if score #yellow forge matches 4 run scoreboard players reset #yellow player1
execute if score #yellow forge matches 4 run scoreboard players reset #yellow player0

execute if score #yellow forge matches 3 run scoreboard players reset #yellow player5
execute if score #yellow forge matches 3 run scoreboard players reset #yellow player4
execute if score #yellow forge matches 3 run scoreboard players reset #yellow player2
execute if score #yellow forge matches 3 run scoreboard players reset #yellow player1
execute if score #yellow forge matches 3 run scoreboard players reset #yellow player0

execute if score #yellow forge matches 2 run scoreboard players reset #yellow player5
execute if score #yellow forge matches 2 run scoreboard players reset #yellow player3
execute if score #yellow forge matches 2 run scoreboard players reset #yellow player4
execute if score #yellow forge matches 2 run scoreboard players reset #yellow player1
execute if score #yellow forge matches 2 run scoreboard players reset #yellow player0

execute if score #yellow forge matches 1 run scoreboard players reset #yellow player5
execute if score #yellow forge matches 1 run scoreboard players reset #yellow player3
execute if score #yellow forge matches 1 run scoreboard players reset #yellow player2
execute if score #yellow forge matches 1 run scoreboard players reset #yellow player4
execute if score #yellow forge matches 1 run scoreboard players reset #yellow player0

execute if score #yellow forge matches 0 run scoreboard players reset #yellow player5
execute if score #yellow forge matches 0 run scoreboard players reset #yellow player3
execute if score #yellow forge matches 0 run scoreboard players reset #yellow player2
execute if score #yellow forge matches 0 run scoreboard players reset #yellow player1
execute if score #yellow forge matches 0 run scoreboard players reset #yellow player4

execute if score #gray forge matches 5.. run scoreboard players add #gray player5 1
execute if score #gray forge matches 4 run scoreboard players add #gray player4 1
execute if score #gray forge matches 3 run scoreboard players add #gray player3 1
execute if score #gray forge matches 2 run scoreboard players add #gray player2 1
execute if score #gray forge matches 1 run scoreboard players add #gray player1 1
execute if score #gray forge matches 0 run scoreboard players add #gray player0 1

execute if score #gray forge matches 5.. run scoreboard players reset #gray player4
execute if score #gray forge matches 5.. run scoreboard players reset #gray player3
execute if score #gray forge matches 5.. run scoreboard players reset #gray player2
execute if score #gray forge matches 5.. run scoreboard players reset #gray player1
execute if score #gray forge matches 5.. run scoreboard players reset #gray player0

execute if score #gray forge matches 4 run scoreboard players reset #gray player5
execute if score #gray forge matches 4 run scoreboard players reset #gray player3
execute if score #gray forge matches 4 run scoreboard players reset #gray player2
execute if score #gray forge matches 4 run scoreboard players reset #gray player1
execute if score #gray forge matches 4 run scoreboard players reset #gray player0

execute if score #gray forge matches 3 run scoreboard players reset #gray player5
execute if score #gray forge matches 3 run scoreboard players reset #gray player4
execute if score #gray forge matches 3 run scoreboard players reset #gray player2
execute if score #gray forge matches 3 run scoreboard players reset #gray player1
execute if score #gray forge matches 3 run scoreboard players reset #gray player0

execute if score #gray forge matches 2 run scoreboard players reset #gray player5
execute if score #gray forge matches 2 run scoreboard players reset #gray player3
execute if score #gray forge matches 2 run scoreboard players reset #gray player4
execute if score #gray forge matches 2 run scoreboard players reset #gray player1
execute if score #gray forge matches 2 run scoreboard players reset #gray player0

execute if score #gray forge matches 1 run scoreboard players reset #gray player5
execute if score #gray forge matches 1 run scoreboard players reset #gray player3
execute if score #gray forge matches 1 run scoreboard players reset #gray player2
execute if score #gray forge matches 1 run scoreboard players reset #gray player4
execute if score #gray forge matches 1 run scoreboard players reset #gray player0

execute if score #gray forge matches 0 run scoreboard players reset #gray player5
execute if score #gray forge matches 0 run scoreboard players reset #gray player3
execute if score #gray forge matches 0 run scoreboard players reset #gray player2
execute if score #gray forge matches 0 run scoreboard players reset #gray player1
execute if score #gray forge matches 0 run scoreboard players reset #gray player4

execute if score #white forge matches 5.. run scoreboard players add #white player5 1
execute if score #white forge matches 4 run scoreboard players add #white player4 1
execute if score #white forge matches 3 run scoreboard players add #white player3 1
execute if score #white forge matches 2 run scoreboard players add #white player2 1
execute if score #white forge matches 1 run scoreboard players add #white player1 1
execute if score #white forge matches 0 run scoreboard players add #white player0 1

execute if score #white forge matches 5.. run scoreboard players reset #white player4
execute if score #white forge matches 5.. run scoreboard players reset #white player3
execute if score #white forge matches 5.. run scoreboard players reset #white player2
execute if score #white forge matches 5.. run scoreboard players reset #white player1
execute if score #white forge matches 5.. run scoreboard players reset #white player0

execute if score #white forge matches 4 run scoreboard players reset #white player5
execute if score #white forge matches 4 run scoreboard players reset #white player3
execute if score #white forge matches 4 run scoreboard players reset #white player2
execute if score #white forge matches 4 run scoreboard players reset #white player1
execute if score #white forge matches 4 run scoreboard players reset #white player0

execute if score #white forge matches 3 run scoreboard players reset #white player5
execute if score #white forge matches 3 run scoreboard players reset #white player4
execute if score #white forge matches 3 run scoreboard players reset #white player2
execute if score #white forge matches 3 run scoreboard players reset #white player1
execute if score #white forge matches 3 run scoreboard players reset #white player0

execute if score #white forge matches 2 run scoreboard players reset #white player5
execute if score #white forge matches 2 run scoreboard players reset #white player3
execute if score #white forge matches 2 run scoreboard players reset #white player4
execute if score #white forge matches 2 run scoreboard players reset #white player1
execute if score #white forge matches 2 run scoreboard players reset #white player0

execute if score #white forge matches 1 run scoreboard players reset #white player5
execute if score #white forge matches 1 run scoreboard players reset #white player3
execute if score #white forge matches 1 run scoreboard players reset #white player2
execute if score #white forge matches 1 run scoreboard players reset #white player4
execute if score #white forge matches 1 run scoreboard players reset #white player0

execute if score #white forge matches 0 run scoreboard players reset #white player5
execute if score #white forge matches 0 run scoreboard players reset #white player3
execute if score #white forge matches 0 run scoreboard players reset #white player2
execute if score #white forge matches 0 run scoreboard players reset #white player1
execute if score #white forge matches 0 run scoreboard players reset #white player4

execute if score #aqua forge matches 5.. run scoreboard players add #aqua player5 1
execute if score #aqua forge matches 4 run scoreboard players add #aqua player4 1
execute if score #aqua forge matches 3 run scoreboard players add #aqua player3 1
execute if score #aqua forge matches 2 run scoreboard players add #aqua player2 1
execute if score #aqua forge matches 1 run scoreboard players add #aqua player1 1
execute if score #aqua forge matches 0 run scoreboard players add #aqua player0 1

execute if score #aqua forge matches 5.. run scoreboard players reset #aqua player4
execute if score #aqua forge matches 5.. run scoreboard players reset #aqua player3
execute if score #aqua forge matches 5.. run scoreboard players reset #aqua player2
execute if score #aqua forge matches 5.. run scoreboard players reset #aqua player1
execute if score #aqua forge matches 5.. run scoreboard players reset #aqua player0

execute if score #aqua forge matches 4 run scoreboard players reset #aqua player5
execute if score #aqua forge matches 4 run scoreboard players reset #aqua player3
execute if score #aqua forge matches 4 run scoreboard players reset #aqua player2
execute if score #aqua forge matches 4 run scoreboard players reset #aqua player1
execute if score #aqua forge matches 4 run scoreboard players reset #aqua player0

execute if score #aqua forge matches 3 run scoreboard players reset #aqua player5
execute if score #aqua forge matches 3 run scoreboard players reset #aqua player4
execute if score #aqua forge matches 3 run scoreboard players reset #aqua player2
execute if score #aqua forge matches 3 run scoreboard players reset #aqua player1
execute if score #aqua forge matches 3 run scoreboard players reset #aqua player0

execute if score #aqua forge matches 2 run scoreboard players reset #aqua player5
execute if score #aqua forge matches 2 run scoreboard players reset #aqua player3
execute if score #aqua forge matches 2 run scoreboard players reset #aqua player4
execute if score #aqua forge matches 2 run scoreboard players reset #aqua player1
execute if score #aqua forge matches 2 run scoreboard players reset #aqua player0

execute if score #aqua forge matches 1 run scoreboard players reset #aqua player5
execute if score #aqua forge matches 1 run scoreboard players reset #aqua player3
execute if score #aqua forge matches 1 run scoreboard players reset #aqua player2
execute if score #aqua forge matches 1 run scoreboard players reset #aqua player4
execute if score #aqua forge matches 1 run scoreboard players reset #aqua player0

execute if score #aqua forge matches 0 run scoreboard players reset #aqua player5
execute if score #aqua forge matches 0 run scoreboard players reset #aqua player3
execute if score #aqua forge matches 0 run scoreboard players reset #aqua player2
execute if score #aqua forge matches 0 run scoreboard players reset #aqua player1
execute if score #aqua forge matches 0 run scoreboard players reset #aqua player4

execute if score #pink forge matches 5.. run scoreboard players add #pink player5 1
execute if score #pink forge matches 4 run scoreboard players add #pink player4 1
execute if score #pink forge matches 3 run scoreboard players add #pink player3 1
execute if score #pink forge matches 2 run scoreboard players add #pink player2 1
execute if score #pink forge matches 1 run scoreboard players add #pink player1 1
execute if score #pink forge matches 0 run scoreboard players add #pink player0 1

execute if score #pink forge matches 5.. run scoreboard players reset #pink player4
execute if score #pink forge matches 5.. run scoreboard players reset #pink player3
execute if score #pink forge matches 5.. run scoreboard players reset #pink player2
execute if score #pink forge matches 5.. run scoreboard players reset #pink player1
execute if score #pink forge matches 5.. run scoreboard players reset #pink player0

execute if score #pink forge matches 4 run scoreboard players reset #pink player5
execute if score #pink forge matches 4 run scoreboard players reset #pink player3
execute if score #pink forge matches 4 run scoreboard players reset #pink player2
execute if score #pink forge matches 4 run scoreboard players reset #pink player1
execute if score #pink forge matches 4 run scoreboard players reset #pink player0

execute if score #pink forge matches 3 run scoreboard players reset #pink player5
execute if score #pink forge matches 3 run scoreboard players reset #pink player4
execute if score #pink forge matches 3 run scoreboard players reset #pink player2
execute if score #pink forge matches 3 run scoreboard players reset #pink player1
execute if score #pink forge matches 3 run scoreboard players reset #pink player0

execute if score #pink forge matches 2 run scoreboard players reset #pink player5
execute if score #pink forge matches 2 run scoreboard players reset #pink player3
execute if score #pink forge matches 2 run scoreboard players reset #pink player4
execute if score #pink forge matches 2 run scoreboard players reset #pink player1
execute if score #pink forge matches 2 run scoreboard players reset #pink player0

execute if score #pink forge matches 1 run scoreboard players reset #pink player5
execute if score #pink forge matches 1 run scoreboard players reset #pink player3
execute if score #pink forge matches 1 run scoreboard players reset #pink player2
execute if score #pink forge matches 1 run scoreboard players reset #pink player4
execute if score #pink forge matches 1 run scoreboard players reset #pink player0

execute if score #pink forge matches 0 run scoreboard players reset #pink player5
execute if score #pink forge matches 0 run scoreboard players reset #pink player3
execute if score #pink forge matches 0 run scoreboard players reset #pink player2
execute if score #pink forge matches 0 run scoreboard players reset #pink player1
execute if score #pink forge matches 0 run scoreboard players reset #pink player4

execute if score #red player5 matches 1 run function bw:score
execute if score #red player4 matches 1 run function bw:score
execute if score #red player3 matches 1 run function bw:score
execute if score #red player2 matches 1 run function bw:score
execute if score #red player1 matches 1 run function bw:score
execute if score #red player0 matches 1 run function bw:score

execute if score #blue player5 matches 1 run function bw:score
execute if score #blue player4 matches 1 run function bw:score
execute if score #blue player3 matches 1 run function bw:score
execute if score #blue player2 matches 1 run function bw:score
execute if score #blue player1 matches 1 run function bw:score
execute if score #blue player0 matches 1 run function bw:score

execute if score #green player5 matches 1 run function bw:score
execute if score #green player4 matches 1 run function bw:score
execute if score #green player3 matches 1 run function bw:score
execute if score #green player2 matches 1 run function bw:score
execute if score #green player1 matches 1 run function bw:score
execute if score #green player0 matches 1 run function bw:score

execute if score #yellow player5 matches 1 run function bw:score
execute if score #yellow player4 matches 1 run function bw:score
execute if score #yellow player3 matches 1 run function bw:score
execute if score #yellow player2 matches 1 run function bw:score
execute if score #yellow player1 matches 1 run function bw:score
execute if score #yellow player0 matches 1 run function bw:score

execute if score #gray player5 matches 1 run function bw:score
execute if score #gray player4 matches 1 run function bw:score
execute if score #gray player3 matches 1 run function bw:score
execute if score #gray player2 matches 1 run function bw:score
execute if score #gray player1 matches 1 run function bw:score
execute if score #gray player0 matches 1 run function bw:score

execute if score #white player5 matches 1 run function bw:score
execute if score #white player4 matches 1 run function bw:score
execute if score #white player3 matches 1 run function bw:score
execute if score #white player2 matches 1 run function bw:score
execute if score #white player1 matches 1 run function bw:score
execute if score #white player0 matches 1 run function bw:score

execute if score #aqua player5 matches 1 run function bw:score
execute if score #aqua player4 matches 1 run function bw:score
execute if score #aqua player3 matches 1 run function bw:score
execute if score #aqua player2 matches 1 run function bw:score
execute if score #aqua player1 matches 1 run function bw:score
execute if score #aqua player0 matches 1 run function bw:score

execute if score #pink player5 matches 1 run function bw:score
execute if score #pink player4 matches 1 run function bw:score
execute if score #pink player3 matches 1 run function bw:score
execute if score #pink player2 matches 1 run function bw:score
execute if score #pink player1 matches 1 run function bw:score
execute if score #pink player0 matches 1 run function bw:score

execute if entity @e[type=armor_stand,tag=timer,scores={gametimer=1}] run function bw:score
execute if entity @e[type=armor_stand,tag=timer,scores={gametimer=100}] run function bw:score
execute if entity @e[type=armor_stand,tag=timer,scores={gametimer=9601}] run function bw:score
execute if entity @e[type=armor_stand,tag=timer,scores={gametimer=19201}] run function bw:score
execute if entity @e[type=armor_stand,tag=timer,scores={gametimer=28801}] run function bw:score
execute if entity @e[type=armor_stand,tag=timer,scores={gametimer=38401}] run function bw:score

execute if entity @e[type=armor_stand,tag=timer,scores={event=..1}] run function bw:score
execute if entity @e[type=armor_stand,tag=timer,scores={event=2}] run function bw:score
execute if entity @e[type=armor_stand,tag=timer,scores={event=1201}] run function bw:score
execute if entity @e[type=armor_stand,tag=timer,scores={event=2401}] run function bw:score
execute if entity @e[type=armor_stand,tag=timer,scores={event=3601}] run function bw:score
execute if entity @e[type=armor_stand,tag=timer,scores={event=4801}] run function bw:score
execute if entity @e[type=armor_stand,tag=timer,scores={event=6001}] run function bw:score
execute if entity @e[type=armor_stand,tag=timer,scores={event=7201}] run function bw:score
execute if entity @e[type=armor_stand,tag=timer,scores={event=8401}] run function bw:score

execute if entity @e[tag=timer,type=armor_stand,scores={event=8421}] run function bw:score
execute if entity @e[tag=timer,type=armor_stand,scores={event=8441}] run function bw:score
execute if entity @e[tag=timer,type=armor_stand,scores={event=8461}] run function bw:score
execute if entity @e[tag=timer,type=armor_stand,scores={event=8481}] run function bw:score
execute if entity @e[tag=timer,type=armor_stand,scores={event=8501}] run function bw:score
execute if entity @e[tag=timer,type=armor_stand,scores={event=8521}] run function bw:score
execute if entity @e[tag=timer,type=armor_stand,scores={event=8541}] run function bw:score
execute if entity @e[tag=timer,type=armor_stand,scores={event=8561}] run function bw:score
execute if entity @e[tag=timer,type=armor_stand,scores={event=8581}] run function bw:score
execute if entity @e[tag=timer,type=armor_stand,scores={event=8601}] run function bw:score
execute if entity @e[tag=timer,type=armor_stand,scores={event=8621}] run function bw:score
execute if entity @e[tag=timer,type=armor_stand,scores={event=8641}] run function bw:score
execute if entity @e[tag=timer,type=armor_stand,scores={event=8661}] run function bw:score
execute if entity @e[tag=timer,type=armor_stand,scores={event=8681}] run function bw:score
execute if entity @e[tag=timer,type=armor_stand,scores={event=8701}] run function bw:score
execute if entity @e[tag=timer,type=armor_stand,scores={event=8721}] run function bw:score
execute if entity @e[tag=timer,type=armor_stand,scores={event=8741}] run function bw:score
execute if entity @e[tag=timer,type=armor_stand,scores={event=8761}] run function bw:score
execute if entity @e[tag=timer,type=armor_stand,scores={event=8781}] run function bw:score
execute if entity @e[tag=timer,type=armor_stand,scores={event=8801}] run function bw:score
execute if entity @e[tag=timer,type=armor_stand,scores={event=8821}] run function bw:score
execute if entity @e[tag=timer,type=armor_stand,scores={event=8841}] run function bw:score
execute if entity @e[tag=timer,type=armor_stand,scores={event=8861}] run function bw:score
execute if entity @e[tag=timer,type=armor_stand,scores={event=8881}] run function bw:score
execute if entity @e[tag=timer,type=armor_stand,scores={event=8901}] run function bw:score
execute if entity @e[tag=timer,type=armor_stand,scores={event=8921}] run function bw:score
execute if entity @e[tag=timer,type=armor_stand,scores={event=8941}] run function bw:score
execute if entity @e[tag=timer,type=armor_stand,scores={event=8961}] run function bw:score
execute if entity @e[tag=timer,type=armor_stand,scores={event=8981}] run function bw:score
execute if entity @e[tag=timer,type=armor_stand,scores={event=9001}] run function bw:score
execute if entity @e[tag=timer,type=armor_stand,scores={event=9021}] run function bw:score
execute if entity @e[tag=timer,type=armor_stand,scores={event=9041}] run function bw:score
execute if entity @e[tag=timer,type=armor_stand,scores={event=9061}] run function bw:score
execute if entity @e[tag=timer,type=armor_stand,scores={event=9081}] run function bw:score
execute if entity @e[tag=timer,type=armor_stand,scores={event=9101}] run function bw:score
execute if entity @e[tag=timer,type=armor_stand,scores={event=9121}] run function bw:score
execute if entity @e[tag=timer,type=armor_stand,scores={event=9141}] run function bw:score
execute if entity @e[tag=timer,type=armor_stand,scores={event=9161}] run function bw:score
execute if entity @e[tag=timer,type=armor_stand,scores={event=9181}] run function bw:score
execute if entity @e[tag=timer,type=armor_stand,scores={event=9201}] run function bw:score
execute if entity @e[tag=timer,type=armor_stand,scores={event=9221}] run function bw:score
execute if entity @e[tag=timer,type=armor_stand,scores={event=9241}] run function bw:score
execute if entity @e[tag=timer,type=armor_stand,scores={event=9261}] run function bw:score
execute if entity @e[tag=timer,type=armor_stand,scores={event=9281}] run function bw:score
execute if entity @e[tag=timer,type=armor_stand,scores={event=9301}] run function bw:score
execute if entity @e[tag=timer,type=armor_stand,scores={event=9321}] run function bw:score
execute if entity @e[tag=timer,type=armor_stand,scores={event=9341}] run function bw:score
execute if entity @e[tag=timer,type=armor_stand,scores={event=9361}] run function bw:score
execute if entity @e[tag=timer,type=armor_stand,scores={event=9381}] run function bw:score
execute if entity @e[tag=timer,type=armor_stand,scores={event=9401}] run function bw:score
execute if entity @e[tag=timer,type=armor_stand,scores={event=9421}] run function bw:score
execute if entity @e[tag=timer,type=armor_stand,scores={event=9441}] run function bw:score
execute if entity @e[tag=timer,type=armor_stand,scores={event=9461}] run function bw:score
execute if entity @e[tag=timer,type=armor_stand,scores={event=9481}] run function bw:score
execute if entity @e[tag=timer,type=armor_stand,scores={event=9501}] run function bw:score
execute if entity @e[tag=timer,type=armor_stand,scores={event=9521}] run function bw:score
execute if entity @e[tag=timer,type=armor_stand,scores={event=9541}] run function bw:score
execute if entity @e[tag=timer,type=armor_stand,scores={event=9561}] run function bw:score
execute if entity @e[tag=timer,type=armor_stand,scores={event=9581}] run function bw:score
execute if entity @e[tag=timer,type=armor_stand,scores={event=9601}] run function bw:score


###


execute store result score red playerCount if entity @a[team=red]
execute store result score blue playerCount if entity @a[team=blue]
execute store result score green playerCount if entity @a[team=green]
execute store result score yellow playerCount if entity @a[team=yellow]
execute store result score aqua playerCount if entity @a[team=aqua]
execute store result score white playerCount if entity @a[team=white]
execute store result score pink playerCount if entity @a[team=pink]
execute store result score gray playerCount if entity @a[team=gray]

scoreboard players reset @e[type=armor_stand,tag=timer] change

execute if entity @a[tag=give] run function bw:give
execute if entity @e[tag=redb,type=shulker] run function bw:give
execute if entity @e[tag=blueb,type=shulker] run function bw:give
execute if entity @e[tag=greenb,type=shulker] run function bw:give
execute if entity @e[tag=yellowb,type=shulker] run function bw:give
execute if entity @e[tag=grayb,type=shulker] run function bw:give
execute if entity @e[tag=whiteb,type=shulker] run function bw:give
execute if entity @e[tag=aquab,type=shulker] run function bw:give
execute if entity @e[tag=pinkb,type=shulker] run function bw:give
execute if entity @e[tag=diaf,type=shulker] run function bw:give
execute if entity @e[tag=emeraldf,type=shulker] run function bw:give
execute if entity @e[tag=Sspawn,type=shulker] run function bw:give
execute if entity @e[tag=Echestf,type=shulker] run function bw:give
execute if entity @e[tag=chestf,type=shulker] run function bw:give
execute if entity @e[tag=reds,type=shulker] run function bw:give
execute if entity @e[tag=blues,type=shulker] run function bw:give
execute if entity @e[tag=greens,type=shulker] run function bw:give
execute if entity @e[tag=yellows,type=shulker] run function bw:give
execute if entity @e[tag=grays,type=shulker] run function bw:give
execute if entity @e[tag=whites,type=shulker] run function bw:give
execute if entity @e[tag=aquas,type=shulker] run function bw:give
execute if entity @e[tag=pinks,type=shulker] run function bw:give
execute if entity @e[tag=redf,type=shulker] run function bw:give
execute if entity @e[tag=bluef,type=shulker] run function bw:give
execute if entity @e[tag=greenf,type=shulker] run function bw:give
execute if entity @e[tag=yellowf,type=shulker] run function bw:give
execute if entity @e[tag=grayf,type=shulker] run function bw:give
execute if entity @e[tag=whitef,type=shulker] run function bw:give
execute if entity @e[tag=aquaf,type=shulker] run function bw:give
execute if entity @e[tag=pinkf,type=shulker] run function bw:give

execute store result score #count forge if entity @e[tag=diaF,type=armor_stand]
execute if score #count forge matches 4.. run clear @a minecraft:shulker_spawn_egg{Enchantments:[{id:"minecraft:protection",lvl:7}]}

execute store result score #count1 forge if entity @e[tag=emeraldF,type=armor_stand]
execute if score #count1 forge matches 4.. run clear @a minecraft:shulker_spawn_egg{Enchantments:[{id:"minecraft:protection",lvl:6}]}

execute store result score #count2 forge if entity @e[tag=forge,type=armor_stand]
execute if score #count2 forge matches 8.. run clear @a minecraft:shulker_spawn_egg{Enchantments:[{id:"minecraft:protection",lvl:5}]}

execute store result score #count3 forge if entity @e[tag=spawnC,type=armor_stand]
execute if score #count3 forge matches 8.. run clear @a minecraft:shulker_spawn_egg{Enchantments:[{id:"minecraft:protection",lvl:4}]}

execute store result score #count4 forge if entity @e[tag=bed,type=armor_stand]
execute if score #count4 forge matches 8.. run clear @a minecraft:shulker_spawn_egg{Enchantments:[{id:"minecraft:protection",lvl:3}]}

execute store result score #count5 forge if entity @e[tag=shop,type=armor_stand]
execute if score #count5 forge matches 8.. run clear @a minecraft:villager_spawn_egg{Enchantments:[{id:"minecraft:protection",lvl:2}]}
execute store result score #count6 forge if entity @e[tag=upgrade,type=armor_stand]
execute if score #count6 forge matches 8.. run clear @a minecraft:villager_spawn_egg{Enchantments:[{id:"minecraft:protection",lvl:1}]}

execute store result score #count7 forge if entity @e[tag=spawn,type=armor_stand]
execute if score #count7 forge matches 1.. run clear @a minecraft:shulker_spawn_egg{Enchantments:[{id:"minecraft:protection",lvl:8}]}

execute store result score #count8 forge if entity @e[tag=chest,type=armor_stand]
execute if score #count8 forge matches 8.. run clear @a minecraft:shulker_spawn_egg{Enchantments:[{id:"minecraft:protection",lvl:9}]}

execute store result score #count9 forge if entity @e[tag=echest,type=armor_stand]
execute if score #count9 forge matches 8.. run clear @a minecraft:shulker_spawn_egg{Enchantments:[{id:"minecraft:protection",lvl:10}]}

execute as @a[nbt={Inventory:[{Slot:100b,id:"minecraft:chainmail_boots"}]}] at @s run tag @s add chainboots
execute as @a[nbt={Inventory:[{Slot:101b,id:"minecraft:chainmail_leggings"}]}] at @s run tag @s add chainlegs
execute as @a[nbt={Inventory:[{Slot:100b,id:"minecraft:iron_boots"}]}] at @s run tag @s add ironboots
execute as @a[nbt={Inventory:[{Slot:101b,id:"minecraft:iron_leggings"}]}] at @s run tag @s add ironlegs
execute as @a[nbt={Inventory:[{Slot:100b,id:"minecraft:diamond_boots"}]}] at @s run tag @s add diaboots
execute as @a[nbt={Inventory:[{Slot:101b,id:"minecraft:diamond_leggings"}]}] at @s run tag @s add dialegs

execute as @a[nbt={Inventory:[{Slot:100b,id:"minecraft:chainmail_boots"}]}] at @s run tag @s remove diaboots
execute as @a[nbt={Inventory:[{Slot:100b,id:"minecraft:chainmail_boots"}]}] at @s run tag @s remove ironboots
execute as @a[nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots"}]}] at @s run tag @s remove chainboots
execute as @a[nbt={Inventory:[{Slot:101b,id:"minecraft:chainmail_leggings"}]}] at @s run tag @s remove dialegs
execute as @a[nbt={Inventory:[{Slot:101b,id:"minecraft:chainmail_leggings"}]}] at @s run tag @s remove ironlegs
execute as @a[nbt={Inventory:[{Slot:101b,id:"minecraft:leather_leggings"}]}] at @s run tag @s remove chainlegs

execute as @a[nbt={Inventory:[{Slot:100b,id:"minecraft:iron_boots"}]}] at @s run tag @s remove diaboots
execute as @a[nbt={Inventory:[{Slot:100b,id:"minecraft:iron_boots"}]}] at @s run tag @s remove chainboots
execute as @a[nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots"}]}] at @s run tag @s remove ironboots
execute as @a[nbt={Inventory:[{Slot:101b,id:"minecraft:iron_leggings"}]}] at @s run tag @s remove dialegs
execute as @a[nbt={Inventory:[{Slot:101b,id:"minecraft:iron_leggings"}]}] at @s run tag @s remove chainlegs
execute as @a[nbt={Inventory:[{Slot:101b,id:"minecraft:leather_leggings"}]}] at @s run tag @s remove ironlegs

execute as @a[nbt={Inventory:[{Slot:100b,id:"minecraft:diamond_boots"}]}] at @s run tag @s remove chainboots
execute as @a[nbt={Inventory:[{Slot:100b,id:"minecraft:diamond_boots"}]}] at @s run tag @s remove ironboots
execute as @a[nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots"}]}] at @s run tag @s remove diaboots
execute as @a[nbt={Inventory:[{Slot:101b,id:"minecraft:diamond_leggings"}]}] at @s run tag @s remove chainlegs
execute as @a[nbt={Inventory:[{Slot:101b,id:"minecraft:diamond_leggings"}]}] at @s run tag @s remove ironlegs
execute as @a[nbt={Inventory:[{Slot:101b,id:"minecraft:leather_leggings"}]}] at @s run tag @s remove dialegs

execute if entity @a[nbt={ActiveEffects:[{Id:14b}]}] run function bw:invis
execute if entity @a[scores={invis=1..}] run function bw:invis

execute as @e[tag=shop,type=villager] at @s unless entity @e[tag=shop,type=armor_stand,distance=..1] run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Tags:["guishop","shop"],ShowArms:1b,NoBasePlate:1b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b},{id:"minecraft:leather_leggings",Count:1b},{id:"minecraft:leather_chestplate",Count:1b},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"DrTestificate_MD"}}]}
execute as @e[tag=guishop] at @s run tp @s @e[tag=shop,type=villager,distance=..1,limit=1]
execute as @e[tag=shop,type=villager] at @s if entity @e[tag=guishop,distance=..1] run kill @s

execute as @e[tag=upgrade,type=villager] at @s unless entity @e[tag=shop,type=armor_stand,distance=..1] run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Tags:["guiupgrade","upgrade"],ShowArms:1b,NoBasePlate:1b,ArmorItems:[{id:"minecraft:leather_boots",Count:1b},{id:"minecraft:leather_leggings",Count:1b},{id:"minecraft:leather_chestplate",Count:1b},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"DrTestificate_MD"}}]}
execute as @e[tag=guiupgrade] at @s run tp @s @e[tag=upgrade,type=villager,distance=..1,limit=1]
execute as @e[tag=upgrade,type=villager] at @s if entity @e[tag=guiupgrade,distance=..1] run kill @s

execute as @e[tag=guishop] at @s unless entity @e[tag=shop,type=villager,distance=..2] unless entity @e[tag=itemgui,distance=..4] run summon chest_minecart ~ ~1 ~-.4 {NoGravity:1b,Tags:["itemgui"]}
execute as @e[tag=itemgui,type=minecraft:chest_minecart] at @s run data merge entity @s {NoGravity:1b,Invulnerable:1b,Tags:["itemgui"],CustomName:"[{\"text\":\"Item Shop\",\"color\":\"white\",\"bold\":\"true\"},{\"text\":\" Shift Click Items\",\"color\":\"light_purple\"}]",DisplayState:{Name:"minecraft:air"},Items:[{Slot:0b,id:"minecraft:white_wool",Count:16b,tag:{display:{Name:"[{\"text\":\"Wool\",\"color\":\"white\",\"bold\":\"true\"},{\"text\":\" 4 Iron for 16 Wool\",\"color\":\"light_purple\"}]"},HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:1}]}},{Slot:1b,id:"minecraft:oak_planks",Count:4b,tag:{display:{Name:"[{\"text\":\"Planks\",\"color\":\"white\",\"bold\":\"true\"},{\"text\":\" 4 Gold for 16\",\"color\":\"light_purple\"}]"},HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:1}]}},{Slot:2b,id:"minecraft:sandstone",Count:16b,tag:{display:{Name:"[{\"text\":\"SandStone\",\"color\":\"white\",\"bold\":\"true\"},{\"text\":\" 12 Iron for 16\",\"color\":\"light_purple\"}]"},HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:1}]}},{Slot:3b,id:"minecraft:end_stone",Count:16b,tag:{display:{Name:"[{\"text\":\"End Stone\",\"color\":\"white\",\"bold\":\"true\"},{\"text\":\" 24 Iron for 12\",\"color\":\"light_purple\"}]"},HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:1}]}},{Slot:4b,id:"minecraft:white_stained_glass",Count:4b,tag:{display:{Name:"[{\"text\":\"Blast-Proof Glass\",\"color\":\"white\",\"bold\":\"true\"},{\"text\":\" 12 Iron for 4 Glass\",\"color\":\"light_purple\"}]"},HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:1}]}},{Slot:5b,id:"minecraft:obsidian",Count:4b,tag:{display:{Name:"[{\"text\":\"Obsidian\",\"color\":\"white\",\"bold\":\"true\"},{\"text\":\" 4 Emerald for 4\",\"color\":\"light_purple\"}]"},HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:1}]}},{Slot:6b,id:"minecraft:stone_sword",Count:1b,tag:{display:{Name:"[{\"text\":\"Stone Sword\",\"color\":\"white\",\"bold\":\"true\"},{\"text\":\" 10 Iron\",\"color\":\"light_purple\"}]"},HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:1}]}},{Slot:7b,id:"minecraft:iron_sword",Count:1b,tag:{display:{Name:"[{\"text\":\"Iron Sword\",\"color\":\"white\",\"bold\":\"true\"},{\"text\":\" 7 Gold\",\"color\":\"light_purple\"}]"},HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:1}]}},{Slot:8b,id:"minecraft:diamond_sword",Count:1b,tag:{display:{Name:"[{\"text\":\"Diamond Sword\",\"color\":\"white\",\"bold\":\"true\"},{\"text\":\" 4 Emeralds\",\"color\":\"light_purple\"}]"},HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:1}]}},{Slot:9b,id:"minecraft:chainmail_chestplate",Count:1b,tag:{display:{Name:"[{\"text\":\"Permanent Chain Armor\",\"color\":\"white\",\"bold\":\"true\"},{\"text\":\" 40 Iron\",\"color\":\"light_purple\"}]"},HideFlags:1,Enchantments:[{id:"minecraft:looting",lvl:1}]}},{Slot:10b,id:"minecraft:iron_chestplate",Count:1b,tag:{display:{Name:"[{\"text\":\"Permanent Iron Armor\",\"color\":\"white\",\"bold\":\"true\"},{\"text\":\" 12 Gold\",\"color\":\"light_purple\"}]"},HideFlags:1,Enchantments:[{id:"minecraft:looting",lvl:1}]}},{Slot:11b,id:"minecraft:diamond_chestplate",Count:1b,tag:{display:{Name:"[{\"text\":\"Permanent Dia Armor\",\"color\":\"white\",\"bold\":\"true\"},{\"text\":\" 6 Emeralds\",\"color\":\"light_purple\"}]"},HideFlags:1,Enchantments:[{id:"minecraft:looting",lvl:1}]}},{Slot:12b,id:"minecraft:wooden_pickaxe",Count:1b,tag:{display:{Name:"[{\"text\":\"Upgrade Pickaxe\",\"color\":\"white\",\"bold\":\"true\"},{\"text\":\" 10 Iron\",\"color\":\"light_purple\"},{\"text\":\", 10 Iron\",\"color\":\"light_purple\"},{\"text\":\", 3 Gold\",\"color\":\"light_purple\"},{\"text\":\", 6 Gold\",\"color\":\"light_purple\"}]"},HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:1}]}},{Slot:13b,id:"minecraft:wooden_axe",Count:1b,tag:{display:{Name:"[{\"text\":\"Upgrade Axe\",\"color\":\"white\",\"bold\":\"true\"},{\"text\":\" 10 Iron\",\"color\":\"light_purple\"},{\"text\":\", 10 Iron\",\"color\":\"light_purple\"},{\"text\":\", 3 Gold\",\"color\":\"light_purple\"},{\"text\":\", 6 Gold\",\"color\":\"light_purple\"}]"},HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:1}]}},{Slot:14b,id:"minecraft:tnt",Count:1b,tag:{display:{Name:"[{\"text\":\"TNT\",\"color\":\"white\",\"bold\":\"true\"},{\"text\":\" 8 Gold\",\"color\":\"light_purple\"}]"},HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:1}]}},{Slot:15b,id:"minecraft:golden_apple",Count:1b,tag:{display:{Name:"[{\"text\":\"Golden Apple\",\"color\":\"white\",\"bold\":\"true\"},{\"text\":\" 3 Gold\",\"color\":\"light_purple\"}]"},HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:1}]}},{Slot:16b,id:"minecraft:ender_pearl",Count:1b,tag:{display:{Name:"[{\"text\":\"Ender Pearl\",\"color\":\"white\",\"bold\":\"true\"},{\"text\":\" 4 Emeralds\",\"color\":\"light_purple\"}]"},HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:1}]}},{Slot:17b,id:"minecraft:egg",Count:1b,tag:{display:{Name:"[{\"text\":\"Bridge Egg\",\"color\":\"white\",\"bold\":\"true\"},{\"text\":\" 2 Emeralds\",\"color\":\"light_purple\"}]"},HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:1}]}},{Slot:18b,id:"minecraft:potion",Count:1b,tag:{display:{Name:"[{\"text\":\"Potion of Jump\",\"color\":\"white\",\"bold\":\"true\"},{\"text\":\" 1 Emerald\",\"color\":\"light_purple\"}]"},HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:1}],CustomPotionEffects:[{Id:8b,Amplifier:5b,Duration:800,ShowParticles:0b}],CustomPotionColor:1244954}},{Slot:19b,id:"minecraft:potion",Count:1b,tag:{display:{Name:"[{\"text\":\"Potion of Levitation\",\"color\":\"white\",\"bold\":\"true\"},{\"text\":\" 6 Emeralds\",\"color\":\"light_purple\"}]"},HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:2}],CustomPotionEffects:[{Id:25b,Amplifier:255b,Duration:400,ShowParticles:0b}],CustomPotionColor:16713207}},{Slot:20b,id:"minecraft:potion",Count:1b,tag:{display:{Name:"[{\"text\":\"Potion of Invisibility\",\"color\":\"white\",\"bold\":\"true\"},{\"text\":\" 2 Emerald\",\"color\":\"light_purple\"}]"},HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:3}],CustomPotionEffects:[{Id:14b,Amplifier:1b,Duration:600,ShowParticles:0b}],CustomPotionColor:16777215}},{Slot:21b,id:"minecraft:ghast_spawn_egg",Count:1b,tag:{display:{Name:"[{\"text\":\"SilverFish\",\"color\":\"white\",\"bold\":\"true\"},{\"text\":\" 40 Iron\",\"color\":\"light_purple\"}]"},HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:1}]}},{Slot:22b,id:"minecraft:snowball",Count:1b,tag:{display:{Name:"[{\"text\":\"FireBall\",\"color\":\"white\",\"bold\":\"true\"},{\"text\":\" 40 Iron\",\"color\":\"light_purple\"}]"},HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:1}]}},{Slot:23b,id:"minecraft:bow",Count:1b,tag:{display:{Name:"[{\"text\":\"Bow Upgrade\",\"color\":\"white\",\"bold\":\"true\"},{\"text\":\" 12 Gold, 12 Gold, 4 Emerald\",\"color\":\"light_purple\"}]"},HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:1}]}},{Slot:24b,id:"minecraft:arrow",Count:10b,tag:{display:{Name:"[{\"text\":\"Arrow\",\"color\":\"white\",\"bold\":\"true\"},{\"text\":\" 3 Gold for 10\",\"color\":\"light_purple\"}]"},HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}
execute as @e[tag=shop,tag=guishop] at @s run tp @e[tag=itemgui,sort=nearest,distance=..4] ^ ^1 ^-.5

execute as @e[tag=guiupgrade] at @s unless entity @e[tag=shop,type=villager,distance=..2] unless entity @e[tag=upgradegui,distance=..4] run summon chest_minecart ~ ~1 ~-.4 {NoGravity:1b,Tags:["upgradegui"]}
execute as @e[tag=upgradegui,type=minecraft:chest_minecart] at @s run data merge entity @s {NoGravity:1b,Invulnerable:1b,Tags:["upgradegui"],CustomName:"[{\"text\":\"Team Upgrades\",\"color\":\"white\",\"bold\":\"true\"},{\"text\":\" Shift Click\",\"color\":\"light_purple\"}]",DisplayState:{Name:"minecraft:air"},Items:[{Slot:0b,id:"minecraft:iron_nugget",Count:1b,tag:{display:{Name:"[{\"text\":\"Iron Forge\",\"color\":\"white\",\"bold\":\"true\"},{\"text\":\" 2 Diamonds\",\"color\":\"light_purple\"}]"},HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:1}]}},{Slot:1b,id:"minecraft:gold_nugget",Count:1b,tag:{display:{Name:"[{\"text\":\"Golden Forge\",\"color\":\"white\",\"bold\":\"true\"},{\"text\":\" 4 Diamonds\",\"color\":\"light_purple\"}]"},HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:1}]}},{Slot:2b,id:"minecraft:emerald_ore",Count:1b,tag:{display:{Name:"[{\"text\":\"Emerald Forge\",\"color\":\"white\",\"bold\":\"true\"},{\"text\":\" 8 Diamonds\",\"color\":\"light_purple\"}]"},HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:1}]}},{Slot:3b,id:"minecraft:golden_sword",Count:1b,tag:{display:{Name:"[{\"text\":\"Sharpness\",\"color\":\"white\",\"bold\":\"true\"},{\"text\":\" 4 Diamonds\",\"color\":\"light_purple\"}]"},HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:1}]}},{Slot:4b,id:"minecraft:chainmail_chestplate",Count:1b,tag:{display:{Name:"[{\"text\":\"Prot 1\",\"color\":\"white\",\"bold\":\"true\"},{\"text\":\" 2 Diamonds\",\"color\":\"light_purple\"}]"},HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:1}]}},{Slot:5b,id:"minecraft:iron_chestplate",Count:1b,tag:{display:{Name:"[{\"text\":\"Prot 2\",\"color\":\"white\",\"bold\":\"true\"},{\"text\":\" 4 Diamonds\",\"color\":\"light_purple\"}]"},HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:1}]}},{Slot:6b,id:"minecraft:golden_chestplate",Count:1b,tag:{display:{Name:"[{\"text\":\"Prot 3\",\"color\":\"white\",\"bold\":\"true\"},{\"text\":\" 8 Diamonds\",\"color\":\"light_purple\"}]"},HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:1}]}},{Slot:7b,id:"minecraft:diamond_chestplate",Count:1b,tag:{display:{Name:"[{\"text\":\"Prot 4\",\"color\":\"white\",\"bold\":\"true\"},{\"text\":\" 16 Diamonds\",\"color\":\"light_purple\"}]"},HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:1}]}},{Slot:8b,id:"minecraft:tripwire_hook",Count:1b,tag:{display:{Name:"[{\"text\":\"Trap\",\"color\":\"white\",\"bold\":\"true\"},{\"text\":\" 1 Diamond\",\"color\":\"light_purple\"}]"},HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}
execute as @e[tag=upgrade,tag=guiupgrade] at @s run tp @e[tag=upgradegui,sort=nearest,distance=..4] ^ ^1 ^-.5

execute as @e[type=chest_minecart,tag=itemgui] at @s unless entity @e[tag=guishop,distance=..2] run kill @s
execute as @e[type=chest_minecart,tag=guiupgrade] at @s unless entity @e[tag=upgradegui,distance=..2] run kill @s

execute as @e[tag=guishop] at @s run tp @s ~ ~ ~ facing entity @e[tag=guiupgrade,limit=1,sort=nearest] eyes
execute as @e[tag=guiupgrade] at @s run tp @s ~ ~ ~ facing entity @e[tag=guishop,limit=1,sort=nearest] eyes

execute as @a store result score @s ironCount run clear @s minecraft:iron_ingot 0
execute as @a store result score @s goldCount run clear @s minecraft:gold_ingot 0
execute as @a store result score @s emeraldCount run clear @s minecraft:emerald 0
execute as @a store result score @s diaCount run clear @s minecraft:diamond 0

###Shop

execute if entity @a[nbt={Inventory:[{id:"minecraft:white_wool",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] run function bw:shop
execute if entity @a[nbt={Inventory:[{id:"minecraft:oak_planks",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] run function bw:shop
execute if entity @a[nbt={Inventory:[{id:"minecraft:sandstone",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] run function bw:shop
execute if entity @a[nbt={Inventory:[{id:"minecraft:end_stone",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] run function bw:shop
execute if entity @a[nbt={Inventory:[{id:"minecraft:white_stained_glass",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] run function bw:shop
execute if entity @a[nbt={Inventory:[{id:"minecraft:obsidian",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] run function bw:shop
execute if entity @a[nbt={Inventory:[{id:"minecraft:stone_sword",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] run function bw:shop
execute if entity @a[nbt={Inventory:[{id:"minecraft:iron_sword",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] run function bw:shop
execute if entity @a[nbt={Inventory:[{id:"minecraft:diamond_sword",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] run function bw:shop
execute if entity @a[nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{Enchantments:[{id:"minecraft:looting",lvl:1}]}}]}] run function bw:shop
execute if entity @a[nbt={Inventory:[{id:"minecraft:iron_chestplate",tag:{Enchantments:[{id:"minecraft:looting",lvl:1}]}}]}] run function bw:shop
execute if entity @a[nbt={Inventory:[{id:"minecraft:diamond_chestplate",tag:{Enchantments:[{id:"minecraft:looting",lvl:1}]}}]}] run function bw:shop
execute if entity @a[nbt={Inventory:[{id:"minecraft:wooden_pickaxe",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] run function bw:shop
execute if entity @a[nbt={Inventory:[{id:"minecraft:wooden_axe",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] run function bw:shop
execute if entity @a[nbt={Inventory:[{id:"minecraft:tnt",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] run function bw:shop
execute if entity @a[nbt={Inventory:[{id:"minecraft:golden_apple",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] run function bw:shop
execute if entity @a[nbt={Inventory:[{id:"minecraft:potion",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] run function bw:shop
execute if entity @a[nbt={Inventory:[{id:"minecraft:potion",tag:{Enchantments:[{id:"minecraft:protection",lvl:2}]}}]}] run function bw:shop
execute if entity @a[nbt={Inventory:[{id:"minecraft:potion",tag:{Enchantments:[{id:"minecraft:protection",lvl:3}]}}]}] run function bw:shop
execute if entity @a[nbt={Inventory:[{id:"minecraft:ghast_spawn_egg",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] run function bw:shop
execute if entity @a[nbt={Inventory:[{id:"minecraft:snowball",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] run function bw:shop
execute if entity @a[nbt={Inventory:[{id:"minecraft:egg",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] run function bw:shop
execute if entity @a[nbt={Inventory:[{id:"minecraft:bow",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] run function bw:shop
execute if entity @a[nbt={Inventory:[{id:"minecraft:arrow",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] run function bw:shop
execute if entity @a[nbt={Inventory:[{id:"minecraft:ender_pearl",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] run function bw:shop

execute as @a[tag=woodaxe] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:wooden_axe"}]}] run tag @s remove woodaxe
execute as @a[tag=stoneaxe] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:stone_axe"}]}] run tag @s remove stoneaxe
execute as @a[tag=ironaxe] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:iron_axe"}]}] run tag @s remove ironaxe
execute as @a[tag=diaaxe] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:diamond_axe"}]}] run tag @s remove diaaxe

execute as @a[tag=woodpick] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:wooden_pickaxe"}]}] run tag @s remove woodpick
execute as @a[tag=stonepick] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:stone_pickaxe"}]}] run tag @s remove stonepick
execute as @a[tag=ironpick] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:iron_pickaxe"}]}] run tag @s remove ironpick
execute as @a[tag=diapick] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:diamond_pickaxe"}]}] run tag @s remove diapick

###Prototype fireballs

scoreboard objectives add fire dummy
scoreboard players add @e[tag=fire] fire 1
scoreboard players add @e[type=snowball] fire 1
scoreboard players add @e[type=fireball] fire 1
scoreboard players add @e[type=armor_stand,tag=ball] fire 1
kill @e[type=fireball,scores={fire=600..}]
kill @e[tag=fire,scores={fire=3..}]
execute as @e[type=snowball,scores={fire=1}] at @s run playsound minecraft:entity.ghast.shoot block @a[distance=..2]
execute as @e[tag=fire] at @s if entity @e[type=fireball,distance=..1] run kill @s
execute as @a at @s unless entity @s[x_rotation=70..90] if entity @e[type=snowball,distance=..3] unless entity @e[tag=fire,distance=..2] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["fire"]}
execute as @a[x_rotation=70..90] at @s if entity @e[type=snowball,distance=..3] unless entity @e[type=fireball,distance=..2] run summon fireball ~ ~ ~ {ExplosionPower:3,direction:[0.0,-3.0,0.0]}
execute as @a[x_rotation=70..90] at @s if entity @e[type=snowball,distance=..3] run kill @e[type=snowball,distance=..2]
execute as @e[tag=fire,scores={fire=1}] at @s run tp @s @a[limit=1,distance=..1]
execute at @e[type=snowball] run tp @e[tag=fire,scores={fire=1..},limit=1,sort=nearest] ~ ~ ~
execute as @e[tag=fire,scores={fire=1}] at @s unless entity @e[type=minecraft:fireball,distance=..2] run summon fireball ^ ^ ^2 {ExplosionPower:3,direction:[0.0,0.0,0.0]}
execute as @e[type=fireball] at @s unless entity @e[tag=ball,distance=..2] run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["ball"]}
execute as @e[tag=ball] at @s run tp @e[type=fireball,distance=..3,limit=1,sort=nearest]
execute as @e[tag=ball] at @s unless entity @e[type=fireball,distance=..4] run tag @s add impact
execute as @e[tag=impact,scores={fire=4..}] at @s run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 air replace #wool
execute as @e[tag=impact,scores={fire=3}] at @s run fill ~1.5 ~2 ~1.5 ~-1.5 ~-2 ~-1.5 air replace #wool
execute as @e[tag=impact,scores={fire=2}] at @s run fill ~1 ~1.5 ~1 ~-1 ~-1.5 ~-1 air replace #wool
execute as @e[tag=impact,scores={fire=..1}] at @s run fill ~1 ~ ~1 ~-1 ~ ~-1 air replace #wool
execute as @e[tag=impact,scores={fire=4..}] at @s run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 air replace oak_planks
execute as @e[tag=impact,scores={fire=..3}] at @s run fill ~1 ~2 ~1 ~-1 ~-2 ~-1 air replace oak_planks
execute as @e[tag=impact] at @s run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace sandstone
kill @e[type=snowball,scores={fire=7..}]
kill @e[type=fireball,scores={fire=10..},nbt={direction:[0.0,0.0,0.0]}]
scoreboard players reset @e[type=armor_stand,tag=ball,scores={fire=4..}] fire
kill @e[tag=impact]

###Clear shop items if they blow up

execute if entity @e[type=item,nbt={Item:{id:"minecraft:minecart"}}] run function bw:kill

####spinning block stuff

execute as @e[tag=emeraldF] at @s run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:emerald_block",Count:1b}]}
execute as @e[tag=diaF] at @s run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:diamond_block",Count:1b}]}
execute as @e[tag=diaF] at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[tag=emeraldF] at @s run tp @s ~ ~ ~ ~5 ~

###Dia upgrades

execute if entity @a[nbt={Inventory:[{id:"minecraft:iron_nugget"}]}] run function bw:dia
execute if entity @a[nbt={Inventory:[{id:"minecraft:gold_nugget"}]}] run function bw:dia
execute if entity @a[nbt={Inventory:[{id:"minecraft:emerald_ore"}]}] run function bw:dia
execute if entity @a[nbt={Inventory:[{id:"minecraft:golden_sword"}]}] run function bw:dia
execute if entity @a[nbt={Inventory:[{id:"minecraft:iron_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] run function bw:dia
execute if entity @a[nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] run function bw:dia
execute if entity @a[nbt={Inventory:[{id:"minecraft:golden_sword",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] run function bw:dia
execute if entity @a[nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] run function bw:dia
execute if entity @a[nbt={Inventory:[{id:"minecraft:iron_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] run function bw:dia
execute if entity @a[nbt={Inventory:[{id:"minecraft:golden_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] run function bw:dia
execute if entity @a[nbt={Inventory:[{id:"minecraft:diamond_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] run function bw:dia
execute if entity @a[nbt={Inventory:[{id:"minecraft:tripwire_hook",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] run function bw:dia
execute if entity @a[tag=trap] run function bw:trap

### No Ender Pearl Damage

scoreboard objectives add pearl minecraft.used:minecraft.ender_pearl
scoreboard objectives add Ptime dummy
scoreboard players add @a[scores={pearl=1..}] Ptime 1
execute as @a[scores={pearl=1..,Ptime=..2}] at @s unless entity @e[tag=pearl,distance=..1.5] run summon armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["pearl"]}
execute as @a[scores={pearl=1..}] at @s unless entity @e[tag=pearl,distance=..3] run effect give @s resistance 1 100 true
execute as @a[scores={pearl=1..}] at @s unless entity @e[tag=pearl,distance=..3] run effect give @s regeneration 1 30 true
execute as @a[scores={pearl=1..}] at @s unless entity @e[tag=pearl,distance=..3] run stopsound @s * entity.player.hurt
execute as @e[tag=pearl] at @s unless entity @a[scores={pearl=1..},distance=..3] run kill @s
execute as @e[tag=pearl] at @s run tp @a[sort=nearest,limit=1,distance=..3,scores={pearl=1..}]
execute as @a[scores={pearl=..1}] at @s unless entity @e[tag=pearl,distance=..3] run scoreboard players reset @s Ptime
execute as @a[scores={pearl=1..}] at @s unless entity @e[tag=pearl,distance=..3] run scoreboard players reset @s pearl

### Barrier kill
scoreboard players add @e[type=item,nbt={Item:{id:"minecraft:barrier",tag:{Enchantments:[{id:"minecraft:thorns",lvl:99}]}}}] forge 1
execute as @e[scores={forge=10..},type=item,nbt={Item:{id:"minecraft:barrier",tag:{Enchantments:[{id:"minecraft:thorns",lvl:99}]}}}] at @s run kill @e[type=!player,type=!item,distance=..2]
execute as @e[scores={forge=10..},type=item,nbt={Item:{id:"minecraft:barrier",tag:{Enchantments:[{id:"minecraft:thorns",lvl:99}]}}}] at @s run clear @a
execute as @e[scores={forge=10..},type=item,nbt={Item:{id:"minecraft:barrier",tag:{Enchantments:[{id:"minecraft:thorns",lvl:99}]}}}] at @s run tag @a[limit=1,sort=nearest] add give
kill @e[scores={forge=10..},type=item,nbt={Item:{id:"minecraft:barrier",Count:1b,tag:{Enchantments:[{id:"minecraft:thorns",lvl:99}]}}}]

###

execute as @e[tag=Dno] at @s unless entity @e[tag=diaF,distance=..4] run kill @s
execute as @e[tag=Eno] at @s unless entity @e[tag=emeraldF,distance=..4] run kill @s
execute as @e[tag=Sno] at @s unless entity @e[tag=spawnC,distance=..4] run kill @s