execute as @a[tag=red,tag=trap] at @s run tag @e[tag=redB] add trap
execute as @a[tag=blue,tag=trap] at @s run tag @e[tag=blueB] add trap
execute as @a[tag=green,tag=trap] at @s run tag @e[tag=greenB] add trap
execute as @a[tag=yellow,tag=trap] at @s run tag @e[tag=yellowB] add trap
execute as @a[tag=gray,tag=trap] at @s run tag @e[tag=grayB] add trap
execute as @a[tag=white,tag=trap] at @s run tag @e[tag=whiteB] add trap
execute as @a[tag=aqua,tag=trap] at @s run tag @e[tag=aquaB] add trap
execute as @a[tag=pink,tag=trap] at @s run tag @e[tag=pinkB] add trap
execute as @a[tag=red,tag=trap] at @s run tag @s remove trap
execute as @a[tag=blue,tag=trap] at @s run tag @s remove trap
execute as @a[tag=green,tag=trap] at @s run tag @s remove trap
execute as @a[tag=yellow,tag=trap] at @s run tag @s remove trap
execute as @a[tag=gray,tag=trap] at @s run tag @s remove trap
execute as @a[tag=white,tag=trap] at @s run tag @s remove trap
execute as @a[tag=aqua,tag=trap] at @s run tag @s remove trap
execute as @a[tag=pink,tag=trap] at @s run tag @s remove trap
execute as @e[type=armor_stand,tag=redB,tag=trap] at @s if entity @a[tag=!red,distance=..8,gamemode=!spectator] run title @a[tag=red] title [{"text":"Your","color":"white","bold":"true"},{"text":"Trap ","color":"red","bold":"true"},{"text":"Has Been Set Off","color":"white","bold":"true"}]
execute as @e[type=armor_stand,tag=redB,tag=trap] at @s if entity @a[tag=!red,distance=..8,gamemode=!spectator] run effect give @a[tag=!red,distance=..8] blindness 5 1 true
execute as @e[type=armor_stand,tag=redB,tag=trap] at @s if entity @a[tag=!red,distance=..8] run playsound entity.endermen.teleport master @a[team=red] ~ ~ ~ 100 1
execute as @e[type=armor_stand,tag=redB,tag=trap] at @s if entity @a[tag=!red,distance=..8] run tag @s remove trap
execute as @e[type=armor_stand,tag=blueB,tag=trap] at @s if entity @a[tag=!blue,distance=..8,gamemode=!spectator] run title @a[tag=blue] title [{"text":"Your","color":"white","bold":"true"},{"text":"Trap ","color":"blue","bold":"true"},{"text":"Has Been Set Off","color":"white","bold":"true"}]
execute as @e[type=armor_stand,tag=blueB,tag=trap] at @s if entity @a[tag=!blue,distance=..8,gamemode=!spectator] run effect give @a[tag=!blue,distance=..8] blindness 5 1 true
execute as @e[type=armor_stand,tag=blueB,tag=trap] at @s if entity @a[tag=!blue,distance=..8] run playsound entity.endermen.teleport master @a[team=blue] ~ ~ ~ 100 1
execute as @e[type=armor_stand,tag=blueB,tag=trap] at @s if entity @a[tag=!blue,distance=..8] run tag @s remove trap
execute as @e[type=armor_stand,tag=greenB,tag=trap] at @s if entity @a[tag=!green,distance=..8,gamemode=!spectator] run title @a[tag=green] title [{"text":"Your","color":"white","bold":"true"},{"text":"Trap ","color":"green","bold":"true"},{"text":"Has Been Set Off","color":"white","bold":"true"}]
execute as @e[type=armor_stand,tag=greenB,tag=trap] at @s if entity @a[tag=!green,distance=..8,gamemode=!spectator] run effect give @a[tag=!green,distance=..8] blindness 5 1 true
execute as @e[type=armor_stand,tag=greenB,tag=trap] at @s if entity @a[tag=!green,distance=..8] run playsound entity.endermen.teleport master @a[team=green] ~ ~ ~ 100 1
execute as @e[type=armor_stand,tag=greenB,tag=trap] at @s if entity @a[tag=!green,distance=..8] run tag @s remove trap
execute as @e[type=armor_stand,tag=yellowB,tag=trap] at @s if entity @a[tag=!yellow,distance=..8,gamemode=!spectator] run title @a[tag=yellow] title [{"text":"Your","color":"white","bold":"true"},{"text":"Trap ","color":"yellow","bold":"true"},{"text":"Has Been Set Off","color":"white","bold":"true"}]
execute as @e[type=armor_stand,tag=yellowB,tag=trap] at @s if entity @a[tag=!yellow,distance=..8,gamemode=!spectator] run effect give @a[tag=!yellow,distance=..8] blindness 5 1 true
execute as @e[type=armor_stand,tag=yellowB,tag=trap] at @s if entity @a[tag=!yellow,distance=..8] run playsound entity.endermen.teleport master @a[team=yellow] ~ ~ ~ 100 1
execute as @e[type=armor_stand,tag=yellowB,tag=trap] at @s if entity @a[tag=!yellow,distance=..8] run tag @s remove trap
execute as @e[type=armor_stand,tag=grayB,tag=trap] at @s if entity @a[tag=!gray,distance=..8,gamemode=!spectator] run title @a[tag=gray] title [{"text":"Your","color":"white","bold":"true"},{"text":"Trap ","color":"gray","bold":"true"},{"text":"Has Been Set Off","color":"white","bold":"true"}]
execute as @e[type=armor_stand,tag=grayB,tag=trap] at @s if entity @a[tag=!gray,distance=..8,gamemode=!spectator] run effect give @a[tag=!gray,distance=..8] blindness 5 1 true
execute as @e[type=armor_stand,tag=grayB,tag=trap] at @s if entity @a[tag=!gray,distance=..8] run playsound entity.endermen.teleport master @a[team=gray] ~ ~ ~ 100 1
execute as @e[type=armor_stand,tag=grayB,tag=trap] at @s if entity @a[tag=!gray,distance=..8] run tag @s remove trap
execute as @e[type=armor_stand,tag=whiteB,tag=trap] at @s if entity @a[tag=!white,distance=..8,gamemode=!spectator] run title @a[tag=white] title [{"text":"Your","color":"white","bold":"true"},{"text":"Trap ","color":"white","bold":"true"},{"text":"Has Been Set Off","color":"white","bold":"true"}]
execute as @e[type=armor_stand,tag=whiteB,tag=trap] at @s if entity @a[tag=!white,distance=..8,gamemode=!spectator] run effect give @a[tag=!white,distance=..8] blindness 5 1 true
execute as @e[type=armor_stand,tag=whiteB,tag=trap] at @s if entity @a[tag=!white,distance=..8] run playsound entity.endermen.teleport master @a[team=white] ~ ~ ~ 100 1
execute as @e[type=armor_stand,tag=whiteB,tag=trap] at @s if entity @a[tag=!white,distance=..8] run tag @s remove trap
execute as @e[type=armor_stand,tag=aquaB,tag=trap] at @s if entity @a[tag=!aqua,distance=..8,gamemode=!spectator] run title @a[tag=aqua] title [{"text":"Your","color":"white","bold":"true"},{"text":"Trap ","color":"aqua","bold":"true"},{"text":"Has Been Set Off","color":"white","bold":"true"}]
execute as @e[type=armor_stand,tag=aquaB,tag=trap] at @s if entity @a[tag=!aqua,distance=..8,gamemode=!spectator] run effect give @a[tag=!aqua,distance=..8] blindness 5 1 true
execute as @e[type=armor_stand,tag=aquaB,tag=trap] at @s if entity @a[tag=!aqua,distance=..8] run playsound entity.endermen.teleport master @a[team=aqua] ~ ~ ~ 100 1
execute as @e[type=armor_stand,tag=aquaB,tag=trap] at @s if entity @a[tag=!aqua,distance=..8] run tag @s remove trap
execute as @e[type=armor_stand,tag=pinkB,tag=trap] at @s if entity @a[tag=!pink,distance=..8,gamemode=!spectator] run title @a[tag=pink] title [{"text":"Your","color":"white","bold":"true"},{"text":"Trap ","color":"pink","bold":"true"},{"text":"Has Been Set Off","color":"white","bold":"true"}]
execute as @e[type=armor_stand,tag=pinkB,tag=trap] at @s if entity @a[tag=!pink,distance=..8,gamemode=!spectator] run effect give @a[tag=!pink,distance=..8] blindness 5 1 true
execute as @e[type=armor_stand,tag=pinkB,tag=trap] at @s if entity @a[tag=!pink,distance=..8] run playsound entity.endermen.teleport master @a[team=pink] ~ ~ ~ 100 1
execute as @e[type=armor_stand,tag=pinkB,tag=trap] at @s if entity @a[tag=!pink,distance=..8] run tag @s remove trap
clear @a tripwire_hook