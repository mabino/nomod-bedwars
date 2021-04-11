team add miles
team modify miles prefix {"text":"By Miles ","color":"gray"}


team add D2
team modify D2 prefix {"text":"Diamond II In","color":"aqua","bold":"true"}
team add D3
team modify D3 prefix {"text":"Diamond III In","color":"aqua","bold":"true"}

team add E2
team modify E2 prefix {"text":"Emerald II In","color":"dark_green","bold":"true"}
team add E3
team modify E3 prefix {"text":"Emerald III In","color":"dark_green","bold":"true"}

###

execute run scoreboard objectives remove sidebar
execute run scoreboard objectives add sidebar dummy {"text":"BED WARS","color":"yellow","bold":true}
scoreboard objectives setdisplay sidebar sidebar
team join miles §7Playz
execute run scoreboard players set §7Playz sidebar 15

execute as @a run scoreboard players set §a sidebar 14

execute if entity @e[tag=timer,scores={gametimer=100..9600}] run team join D2 §f:
execute if entity @e[tag=timer,scores={gametimer=19201..28800}] run team join D3 §f:
execute if entity @e[tag=timer,scores={gametimer=9601..19200}] run team join E2 §f:
execute if entity @e[tag=timer,scores={gametimer=28801..38400}] run team join E3 §f:

execute if entity @e[tag=timer,scores={gametimer=..99}] run scoreboard players set §3 sidebar 13
execute if entity @e[tag=timer,scores={gametimer=100..9600}] run scoreboard players set §f: sidebar 13
execute if entity @e[tag=timer,scores={gametimer=9601..19200}] run scoreboard players set §f: sidebar 13
execute if entity @e[tag=timer,scores={gametimer=19201..28800}] run scoreboard players set §f: sidebar 13
execute if entity @e[tag=timer,scores={gametimer=28801..38400}] run scoreboard players set §f: sidebar 13
execute if entity @e[tag=timer,scores={gametimer=38401..}] run scoreboard players set §3 sidebar 13

execute as @a if entity @e[tag=timer,type=armor_stand,scores={gametimer=38401..}] run scoreboard players set §0 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=..0}] run scoreboard players set §a00:00 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=1..1200}] run scoreboard players set §a8:00 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=1201..2400}] run scoreboard players set §a7:00 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=2401..3600}] run scoreboard players set §a6:00 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=3601..4800}] run scoreboard players set §a5:00 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=4801..6000}] run scoreboard players set §a4:00 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=6001..7200}] run scoreboard players set §a3:00 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=7201..8400}] run scoreboard players set §a2:00 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=8401..8420}] run scoreboard players set §a1:00 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=8421..8440}] run scoreboard players set §a00:59 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=8441..8460}] run scoreboard players set §a00:58 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=8461..8480}] run scoreboard players set §a00:57 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=8481..8500}] run scoreboard players set §a00:56 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=8501..8520}] run scoreboard players set §a00:55 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=8521..8540}] run scoreboard players set §a00:54 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=8541..8560}] run scoreboard players set §a00:53 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=8561..8580}] run scoreboard players set §a00:52 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=8581..8600}] run scoreboard players set §a00:51 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=8601..8620}] run scoreboard players set §a00:50 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=8621..8640}] run scoreboard players set §a00:49 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=8641..8660}] run scoreboard players set §a00:48 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=8661..8680}] run scoreboard players set §a00:47 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=8681..8700}] run scoreboard players set §a00:46 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=8701..8720}] run scoreboard players set §a00:45 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=8721..8740}] run scoreboard players set §a00:44 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=8741..8760}] run scoreboard players set §a00:43 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=8761..8780}] run scoreboard players set §a00:42 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=8781..8800}] run scoreboard players set §a00:41 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=8801..8820}] run scoreboard players set §a00:40 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=8821..8840}] run scoreboard players set §a00:39 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=8841..8860}] run scoreboard players set §a00:38 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=8861..8880}] run scoreboard players set §a00:37 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=8881..8900}] run scoreboard players set §a00:36 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=8901..8920}] run scoreboard players set §a00:35 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=8921..8940}] run scoreboard players set §a00:34 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=8941..8960}] run scoreboard players set §a00:33 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=8961..8980}] run scoreboard players set §a00:32 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=8981..9000}] run scoreboard players set §a00:31 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=9001..9020}] run scoreboard players set §a00:30 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=9021..9040}] run scoreboard players set §a00:29 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=9041..9060}] run scoreboard players set §a00:28 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=9061..9080}] run scoreboard players set §a00:27 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=9081..9100}] run scoreboard players set §a00:26 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=9101..9120}] run scoreboard players set §a00:25 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=9121..9140}] run scoreboard players set §a00:24 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=9141..9160}] run scoreboard players set §a00:23 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=9161..9180}] run scoreboard players set §a00:22 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=9181..9200}] run scoreboard players set §a00:21 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=9201..9220}] run scoreboard players set §a00:20 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=9221..9240}] run scoreboard players set §a00:19 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=9241..9260}] run scoreboard players set §a00:18 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=9261..9280}] run scoreboard players set §a00:17 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=9281..9300}] run scoreboard players set §a00:16 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=9301..9320}] run scoreboard players set §a00:15 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=9321..9340}] run scoreboard players set §a00:14 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=9341..9360}] run scoreboard players set §a00:13 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=9361..9380}] run scoreboard players set §a00:12 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=9381..9400}] run scoreboard players set §a00:11 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=9401..9420}] run scoreboard players set §a00:10 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=9421..9440}] run scoreboard players set §a00:09 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=9441..9460}] run scoreboard players set §a00:08 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=9461..9480}] run scoreboard players set §a00:07 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=9481..9500}] run scoreboard players set §a00:06 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=9501..9520}] run scoreboard players set §a00:05 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=9521..9540}] run scoreboard players set §a00:04 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=9541..9560}] run scoreboard players set §a00:03 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=9561..9580}] run scoreboard players set §a00:02 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=9581..9600}] run scoreboard players set §a00:01 sidebar 12
execute as @a if entity @e[tag=timer,type=armor_stand,scores={event=9601..}] run scoreboard players set §a00:00 sidebar 12

execute as @a run scoreboard players set  sidebar 11

execute as @e[tag=redB] at @s if block ~ ~ ~ red_bed run scoreboard players set §c§lRed:§a§l✓ sidebar 10
execute as @e[tag=blueB] at @s if block ~ ~ ~ blue_bed run scoreboard players set §1§lBlue:§a§l✓ sidebar 9
execute as @e[tag=greenB] at @s if block ~ ~ ~ lime_bed run scoreboard players set §2§lGreen:§a§l✓ sidebar 8
execute as @e[tag=yellowB] at @s if block ~ ~ ~ yellow_bed run scoreboard players set §e§lYellow:§a§l✓ sidebar 7
execute as @e[tag=whiteB] at @s if block ~ ~ ~ white_bed run scoreboard players set §f§lWhite:§a§l✓ sidebar 5
execute as @e[tag=grayB] at @s if block ~ ~ ~ gray_bed run scoreboard players set §7§lGray:§a§l✓ sidebar 3
execute as @e[tag=aquaB] at @s if block ~ ~ ~ light_blue_bed run scoreboard players set §b§lAqua:§a§l✓ sidebar 6
execute as @e[tag=pinkB] at @s if block ~ ~ ~ pink_bed run scoreboard players set §d§lPink:§a§l✓ sidebar 4

execute as @e[tag=redB] at @s unless block ~ ~ ~ red_bed unless entity @a[tag=red] run scoreboard players set §c§lRed:§c§l✘ sidebar 10
execute as @e[tag=blueB] at @s unless block ~ ~ ~ blue_bed unless entity @a[tag=blue] run scoreboard players set §1§lBlue:§c§l✘ sidebar 9
execute as @e[tag=greenB] at @s unless block ~ ~ ~ lime_bed unless entity @a[tag=green] run scoreboard players set §2§lGreen:§c§l✘ sidebar 8
execute as @e[tag=yellowB] at @s unless block ~ ~ ~ yellow_bed unless entity @a[tag=yellow] run scoreboard players set §e§lYellow:§c§l✘ sidebar 7
execute as @e[tag=whiteB] at @s unless block ~ ~ ~ white_bed unless entity @a[tag=white] run scoreboard players set §f§lWhite:§c§l✘ sidebar 5
execute as @e[tag=grayB] at @s unless block ~ ~ ~ gray_bed unless entity @a[tag=gray] run scoreboard players set §7§lGray:§c§l✘ sidebar 3
execute as @e[tag=aquaB] at @s unless block ~ ~ ~ light_blue_bed unless entity @a[tag=aqua] run scoreboard players set §b§lAqua:§c§l✘ sidebar 6
execute as @e[tag=pinkB] at @s unless block ~ ~ ~ pink_bed unless entity @a[tag=pink] run scoreboard players set §d§lPink:§c§l✘ sidebar 4

execute store result score #red forge if entity @a[team=red]
execute as @e[tag=redB] at @s if score #red forge matches 5.. unless block ~ ~ ~ red_bed run scoreboard players set §c§lRed:§a§l5+ sidebar 10
execute as @e[tag=redB] at @s if score #red forge matches 4 unless block ~ ~ ~ red_bed run scoreboard players set §c§lRed:§a§l4 sidebar 10
execute as @e[tag=redB] at @s if score #red forge matches 3 unless block ~ ~ ~ red_bed run scoreboard players set §c§lRed:§a§l3 sidebar 10
execute as @e[tag=redB] at @s if score #red forge matches 2 unless block ~ ~ ~ red_bed run scoreboard players set §c§lRed:§a§l2 sidebar 10
execute as @e[tag=redB] at @s if score #red forge matches 1 unless block ~ ~ ~ red_bed run scoreboard players set §c§lRed:§a§l1 sidebar 10

execute store result score #blue forge if entity @a[team=blue]
execute as @e[tag=blueB] at @s if score #blue forge matches 5.. unless block ~ ~ ~ blue_bed run scoreboard players set §1§lBlue:§a§l5+ sidebar 9
execute as @e[tag=blueB] at @s if score #blue forge matches 4 unless block ~ ~ ~ blue_bed run scoreboard players set §1§lBlue:§a§l4 sidebar 9
execute as @e[tag=blueB] at @s if score #blue forge matches 3 unless block ~ ~ ~ blue_bed run scoreboard players set §1§lBlue:§a§l3 sidebar 9
execute as @e[tag=blueB] at @s if score #blue forge matches 2 unless block ~ ~ ~ blue_bed run scoreboard players set §1§lBlue:§a§l2 sidebar 9
execute as @e[tag=blueB] at @s if score #blue forge matches 1 unless block ~ ~ ~ blue_bed run scoreboard players set §1§lBlue:§a§l1 sidebar 9

execute store result score #green forge if entity @a[team=green]
execute as @e[tag=greenB] at @s if score #green forge matches 5.. unless block ~ ~ ~ lime_bed run scoreboard players set §2§lGreen:§a§l5+ sidebar 8
execute as @e[tag=greenB] at @s if score #green forge matches 4 unless block ~ ~ ~ lime_bed run scoreboard players set §2§lGreen:§a§l4 sidebar 8
execute as @e[tag=greenB] at @s if score #green forge matches 3 unless block ~ ~ ~ lime_bed run scoreboard players set §2§lGreen:§a§l3 sidebar 8
execute as @e[tag=greenB] at @s if score #green forge matches 2 unless block ~ ~ ~ lime_bed run scoreboard players set §2§lGreen:§a§l2 sidebar 8
execute as @e[tag=greenB] at @s if score #green forge matches 1 unless block ~ ~ ~ lime_bed run scoreboard players set §2§lGreen:§a§l1 sidebar 8

execute store result score #yellow forge if entity @a[team=yellow]
execute as @e[tag=yellowB] at @s if score #yellow forge matches 5.. unless block ~ ~ ~ yellow_bed run scoreboard players set §e§lYellow:§a§l5+ sidebar 7
execute as @e[tag=yellowB] at @s if score #yellow forge matches 4 unless block ~ ~ ~ yellow_bed run scoreboard players set §e§lYellow:§a§l4 sidebar 7
execute as @e[tag=yellowB] at @s if score #yellow forge matches 3 unless block ~ ~ ~ yellow_bed run scoreboard players set §e§lYellow:§a§l3 sidebar 7
execute as @e[tag=yellowB] at @s if score #yellow forge matches 2 unless block ~ ~ ~ yellow_bed run scoreboard players set §e§lYellow:§a§l2 sidebar 7
execute as @e[tag=yellowB] at @s if score #yellow forge matches 1 unless block ~ ~ ~ yellow_bed run scoreboard players set §e§lYellow:§a§l1 sidebar 7

execute store result score #white forge if entity @a[team=white]
execute as @e[tag=whiteB] at @s if score #white forge matches 5.. unless block ~ ~ ~ white_bed run scoreboard players set §f§lWhite:§a§l5+ sidebar 5
execute as @e[tag=whiteB] at @s if score #white forge matches 4 unless block ~ ~ ~ white_bed run scoreboard players set §f§lWhite:§a§l4 sidebar 5
execute as @e[tag=whiteB] at @s if score #white forge matches 3 unless block ~ ~ ~ white_bed run scoreboard players set §f§lWhite:§a§l3 sidebar 5
execute as @e[tag=whiteB] at @s if score #white forge matches 2 unless block ~ ~ ~ white_bed run scoreboard players set §f§lWhite:§a§l2 sidebar 5
execute as @e[tag=whiteB] at @s if score #white forge matches 1 unless block ~ ~ ~ white_bed run scoreboard players set §f§lWhite:§a§l1 sidebar 5

execute store result score #gray forge if entity @a[team=gray]
execute as @e[tag=grayB] at @s if score #gray forge matches 5.. unless block ~ ~ ~ gray_bed run scoreboard players set §7§lGray:§a§l5+ sidebar 3
execute as @e[tag=grayB] at @s if score #gray forge matches 4 unless block ~ ~ ~ gray_bed run scoreboard players set §7§lGray:§a§l4 sidebar 3
execute as @e[tag=grayB] at @s if score #gray forge matches 3 unless block ~ ~ ~ gray_bed run scoreboard players set §7§lGray:§a§l3 sidebar 3
execute as @e[tag=grayB] at @s if score #gray forge matches 2 unless block ~ ~ ~ gray_bed run scoreboard players set §7§lGray:§a§l2 sidebar 3
execute as @e[tag=grayB] at @s if score #gray forge matches 1 unless block ~ ~ ~ gray_bed run scoreboard players set §7§lGray:§a§l1 sidebar 3

execute store result score #aqua forge if entity @a[team=aqua]
execute as @e[tag=aquaB] at @s if score #aqua forge matches 5.. unless block ~ ~ ~ light_blue_bed run scoreboard players set §b§lAqua:§a§l5+ sidebar 6
execute as @e[tag=aquaB] at @s if score #aqua forge matches 4 unless block ~ ~ ~ light_blue_bed run scoreboard players set §b§lAqua:§a§l4 sidebar 6
execute as @e[tag=aquaB] at @s if score #aqua forge matches 3 unless block ~ ~ ~ light_blue_bed run scoreboard players set §b§lAqua:§a§l3 sidebar 6
execute as @e[tag=aquaB] at @s if score #aqua forge matches 2 unless block ~ ~ ~ light_blue_bed run scoreboard players set §b§lAqua:§a§l2 sidebar 6
execute as @e[tag=aquaB] at @s if score #aqua forge matches 1 unless block ~ ~ ~ light_blue_bed run scoreboard players set §b§lAqua:§a§l1 sidebar 6

execute store result score #pink forge if entity @a[team=pink]
execute as @e[tag=pinkB] at @s if score #pink forge matches 5.. unless block ~ ~ ~ pink_bed run scoreboard players set §d§lPink:§a§l5+ sidebar 4
execute as @e[tag=pinkB] at @s if score #pink forge matches 4 unless block ~ ~ ~ pink_bed run scoreboard players set §d§lPink:§a§l4 sidebar 4
execute as @e[tag=pinkB] at @s if score #pink forge matches 3 unless block ~ ~ ~ pink_bed run scoreboard players set §d§lPink:§a§l3 sidebar 4
execute as @e[tag=pinkB] at @s if score #pink forge matches 2 unless block ~ ~ ~ pink_bed run scoreboard players set §d§lPink:§a§l2 sidebar 4
execute as @e[tag=pinkB] at @s if score #pink forge matches 1 unless block ~ ~ ~ pink_bed run scoreboard players set §d§lPink:§a§l1 sidebar 4
