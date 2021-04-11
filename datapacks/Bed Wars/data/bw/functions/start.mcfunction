scoreboard objectives add rotation dummy

execute as @e[tag=bed] at @s run tp @s ~ ~ ~ facing entity @e[tag=spawnC,limit=1,sort=nearest] eyes
execute as @e[tag=bed] store result score @s rotation run data get entity @s Rotation[0] 1


execute as @e[tag=redB,scores={rotation=170..180}] at @s if entity @a[tag=red] run setblock ~ ~ ~ minecraft:red_bed[facing=north] replace
execute as @e[tag=redB,scores={rotation=-185..0}] at @s if entity @a[tag=red] run setblock ~ ~ ~ minecraft:red_bed[facing=north] replace
execute as @e[tag=redB,scores={rotation=170..180}] at @s if entity @a[tag=red] run setblock ^ ^.5 ^1 minecraft:red_bed[facing=north,part=head] replace
execute as @e[tag=redB,scores={rotation=-185..0}] at @s if entity @a[tag=red] run setblock ^ ^.5 ^1 minecraft:red_bed[facing=north,part=head] replace
execute as @e[tag=redB,scores={rotation=85..93}] at @s if entity @a[tag=red] run setblock ~ ~ ~ minecraft:red_bed[facing=west] replace
execute as @e[tag=redB,scores={rotation=85..93}] at @s if entity @a[tag=red] run setblock ^ ^.5 ^1 minecraft:red_bed[facing=west,part=head] replace
execute as @e[tag=redB,scores={rotation=-95..-80}] at @s if entity @a[tag=red] run setblock ~ ~ ~ minecraft:red_bed[facing=east] replace
execute as @e[tag=redB,scores={rotation=-95..-80}] at @s if entity @a[tag=red] run setblock ^ ^.5 ^1 minecraft:red_bed[facing=east,part=head] replace
execute as @e[tag=redB,scores={rotation=-10..0}] at @s if entity @a[tag=red] run setblock ^ ^.5 ^1 minecraft:red_bed[facing=south,part=head] replace
execute as @e[tag=redB,scores={rotation=0..10}] at @s if entity @a[tag=red] run setblock ^ ^.5 ^1 minecraft:red_bed[facing=south,part=head] replace
execute as @e[tag=redB,scores={rotation=-10..0}] at @s if entity @a[tag=red] run setblock ~ ~ ~ minecraft:red_bed[facing=south] replace
execute as @e[tag=redB,scores={rotation=0..10}] at @s if entity @a[tag=red] run setblock ~ ~ ~ minecraft:red_bed[facing=south] replace

execute as @e[tag=blueB,scores={rotation=170..180}] at @s if entity @a[tag=blue] run setblock ~ ~ ~ minecraft:blue_bed[facing=north] replace
execute as @e[tag=blueB,scores={rotation=-185..0}] at @s if entity @a[tag=blue] run setblock ~ ~ ~ minecraft:blue_bed[facing=north] replace
execute as @e[tag=blueB,scores={rotation=170..180}] at @s if entity @a[tag=blue] run setblock ^ ^.5 ^1 minecraft:blue_bed[facing=north,part=head] replace
execute as @e[tag=blueB,scores={rotation=-185..0}] at @s if entity @a[tag=blue] run setblock ^ ^.5 ^1 minecraft:blue_bed[facing=north,part=head] replace
execute as @e[tag=blueB,scores={rotation=85..93}] at @s if entity @a[tag=blue] run setblock ~ ~ ~ minecraft:blue_bed[facing=west] replace
execute as @e[tag=blueB,scores={rotation=85..93}] at @s if entity @a[tag=blue] run setblock ^ ^.5 ^1 minecraft:blue_bed[facing=west,part=head] replace
execute as @e[tag=blueB,scores={rotation=-95..-80}] at @s if entity @a[tag=blue] run setblock ~ ~ ~ minecraft:blue_bed[facing=east] replace
execute as @e[tag=blueB,scores={rotation=-95..-80}] at @s if entity @a[tag=blue] run setblock ^ ^.5 ^1 minecraft:blue_bed[facing=east,part=head] replace
execute as @e[tag=blueB,scores={rotation=-10..0}] at @s if entity @a[tag=blue] run setblock ^ ^.5 ^1 minecraft:blue_bed[facing=south,part=head] replace
execute as @e[tag=blueB,scores={rotation=0..10}] at @s if entity @a[tag=blue] run setblock ^ ^.5 ^1 minecraft:blue_bed[facing=south,part=head] replace
execute as @e[tag=blueB,scores={rotation=-10..0}] at @s if entity @a[tag=blue] run setblock ~ ~ ~ minecraft:blue_bed[facing=south] replace
execute as @e[tag=blueB,scores={rotation=0..10}] at @s if entity @a[tag=blue] run setblock ~ ~ ~ minecraft:blue_bed[facing=south] replace

execute as @e[tag=greenB,scores={rotation=170..180}] at @s if entity @a[tag=green] run setblock ~ ~ ~ minecraft:lime_bed[facing=north] replace
execute as @e[tag=greenB,scores={rotation=-185..0}] at @s if entity @a[tag=green] run setblock ~ ~ ~ minecraft:lime_bed[facing=north] replace
execute as @e[tag=greenB,scores={rotation=170..180}] at @s if entity @a[tag=green] run setblock ^ ^.5 ^1 minecraft:lime_bed[facing=north,part=head] replace
execute as @e[tag=greenB,scores={rotation=-185..0}] at @s if entity @a[tag=green] run setblock ^ ^.5 ^1 minecraft:lime_bed[facing=north,part=head] replace
execute as @e[tag=greenB,scores={rotation=85..93}] at @s if entity @a[tag=green] run setblock ~ ~ ~ minecraft:lime_bed[facing=west] replace
execute as @e[tag=greenB,scores={rotation=85..93}] at @s if entity @a[tag=green] run setblock ^ ^.5 ^1 minecraft:lime_bed[facing=west,part=head] replace
execute as @e[tag=greenB,scores={rotation=-95..-80}] at @s if entity @a[tag=green] run setblock ~ ~ ~ minecraft:lime_bed[facing=east] replace
execute as @e[tag=greenB,scores={rotation=-95..-80}] at @s if entity @a[tag=green] run setblock ^ ^.5 ^1 minecraft:lime_bed[facing=east,part=head] replace
execute as @e[tag=greenB,scores={rotation=-10..0}] at @s if entity @a[tag=green] run setblock ^ ^.5 ^1 minecraft:lime_bed[facing=south,part=head] replace
execute as @e[tag=greenB,scores={rotation=0..10}] at @s if entity @a[tag=green] run setblock ^ ^.5 ^1 minecraft:lime_bed[facing=south,part=head] replace
execute as @e[tag=greenB,scores={rotation=-10..0}] at @s if entity @a[tag=green] run setblock ~ ~ ~ minecraft:lime_bed[facing=south] replace
execute as @e[tag=greenB,scores={rotation=0..10}] at @s if entity @a[tag=green] run setblock ~ ~ ~ minecraft:lime_bed[facing=south] replace

execute as @e[tag=yellowB,scores={rotation=170..180}] at @s if entity @a[tag=yellow] run setblock ~ ~ ~ minecraft:yellow_bed[facing=north] replace
execute as @e[tag=yellowB,scores={rotation=-185..0}] at @s if entity @a[tag=yellow] run setblock ~ ~ ~ minecraft:yellow_bed[facing=north] replace
execute as @e[tag=yellowB,scores={rotation=170..180}] at @s if entity @a[tag=yellow] run setblock ^ ^.5 ^1 minecraft:yellow_bed[facing=north,part=head] replace
execute as @e[tag=yellowB,scores={rotation=-185..0}] at @s if entity @a[tag=yellow] run setblock ^ ^.5 ^1 minecraft:yellow_bed[facing=north,part=head] replace
execute as @e[tag=yellowB,scores={rotation=85..93}] at @s if entity @a[tag=yellow] run setblock ~ ~ ~ minecraft:yellow_bed[facing=west] replace
execute as @e[tag=yellowB,scores={rotation=85..93}] at @s if entity @a[tag=yellow] run setblock ^ ^.5 ^1 minecraft:yellow_bed[facing=west,part=head] replace
execute as @e[tag=yellowB,scores={rotation=-95..-80}] at @s if entity @a[tag=yellow] run setblock ~ ~ ~ minecraft:yellow_bed[facing=east] replace
execute as @e[tag=yellowB,scores={rotation=-95..-80}] at @s if entity @a[tag=yellow] run setblock ^ ^.5 ^1 minecraft:yellow_bed[facing=east,part=head] replace
execute as @e[tag=yellowB,scores={rotation=-10..0}] at @s if entity @a[tag=yellow] run setblock ^ ^.5 ^1 minecraft:yellow_bed[facing=south,part=head] replace
execute as @e[tag=yellowB,scores={rotation=0..10}] at @s if entity @a[tag=yellow] run setblock ^ ^.5 ^1 minecraft:yellow_bed[facing=south,part=head] replace
execute as @e[tag=yellowB,scores={rotation=-10..0}] at @s if entity @a[tag=yellow] run setblock ~ ~ ~ minecraft:yellow_bed[facing=south] replace
execute as @e[tag=yellowB,scores={rotation=0..10}] at @s if entity @a[tag=yellow] run setblock ~ ~ ~ minecraft:yellow_bed[facing=south] replace

execute as @e[tag=grayB,scores={rotation=170..180}] at @s if entity @a[tag=gray] run setblock ~ ~ ~ minecraft:gray_bed[facing=north] replace
execute as @e[tag=grayB,scores={rotation=-185..0}] at @s if entity @a[tag=gray] run setblock ~ ~ ~ minecraft:gray_bed[facing=north] replace
execute as @e[tag=grayB,scores={rotation=170..180}] at @s if entity @a[tag=gray] run setblock ^ ^.5 ^1 minecraft:gray_bed[facing=north,part=head] replace
execute as @e[tag=grayB,scores={rotation=-185..0}] at @s if entity @a[tag=gray] run setblock ^ ^.5 ^1 minecraft:gray_bed[facing=north,part=head] replace
execute as @e[tag=grayB,scores={rotation=85..93}] at @s if entity @a[tag=gray] run setblock ~ ~ ~ minecraft:gray_bed[facing=west] replace
execute as @e[tag=grayB,scores={rotation=85..93}] at @s if entity @a[tag=gray] run setblock ^ ^.5 ^1 minecraft:gray_bed[facing=west,part=head] replace
execute as @e[tag=grayB,scores={rotation=-95..-80}] at @s if entity @a[tag=gray] run setblock ~ ~ ~ minecraft:gray_bed[facing=east] replace
execute as @e[tag=grayB,scores={rotation=-95..-80}] at @s if entity @a[tag=gray] run setblock ^ ^.5 ^1 minecraft:gray_bed[facing=east,part=head] replace
execute as @e[tag=grayB,scores={rotation=-10..0}] at @s if entity @a[tag=gray] run setblock ^ ^.5 ^1 minecraft:gray_bed[facing=south,part=head] replace
execute as @e[tag=grayB,scores={rotation=0..10}] at @s if entity @a[tag=gray] run setblock ^ ^.5 ^1 minecraft:gray_bed[facing=south,part=head] replace
execute as @e[tag=grayB,scores={rotation=-10..0}] at @s if entity @a[tag=gray] run setblock ~ ~ ~ minecraft:gray_bed[facing=south] replace
execute as @e[tag=grayB,scores={rotation=0..10}] at @s if entity @a[tag=gray] run setblock ~ ~ ~ minecraft:gray_bed[facing=south] replace

execute as @e[tag=aquaB,scores={rotation=170..180}] at @s if entity @a[tag=aqua] run setblock ~ ~ ~ minecraft:light_blue_bed[facing=north] replace
execute as @e[tag=aquaB,scores={rotation=-185..0}] at @s if entity @a[tag=aqua] run setblock ~ ~ ~ minecraft:light_blue_bed[facing=north] replace
execute as @e[tag=aquaB,scores={rotation=170..180}] at @s if entity @a[tag=aqua] run setblock ^ ^.5 ^1 minecraft:light_blue_bed[facing=north,part=head] replace
execute as @e[tag=aquaB,scores={rotation=-185..0}] at @s if entity @a[tag=aqua] run setblock ^ ^.5 ^1 minecraft:light_blue_bed[facing=north,part=head] replace
execute as @e[tag=aquaB,scores={rotation=85..93}] at @s if entity @a[tag=aqua] run setblock ~ ~ ~ minecraft:light_blue_bed[facing=west] replace
execute as @e[tag=aquaB,scores={rotation=85..93}] at @s if entity @a[tag=aqua] run setblock ^ ^.5 ^1 minecraft:light_blue_bed[facing=west,part=head] replace
execute as @e[tag=aquaB,scores={rotation=-95..-80}] at @s if entity @a[tag=aqua] run setblock ~ ~ ~ minecraft:light_blue_bed[facing=east] replace
execute as @e[tag=aquaB,scores={rotation=-95..-80}] at @s if entity @a[tag=aqua] run setblock ^ ^.5 ^1 minecraft:light_blue_bed[facing=east,part=head] replace
execute as @e[tag=aquaB,scores={rotation=-10..0}] at @s if entity @a[tag=aqua] run setblock ^ ^.5 ^1 minecraft:light_blue_bed[facing=south,part=head] replace
execute as @e[tag=aquaB,scores={rotation=0..10}] at @s if entity @a[tag=aqua] run setblock ^ ^.5 ^1 minecraft:light_blue_bed[facing=south,part=head] replace
execute as @e[tag=aquaB,scores={rotation=-10..0}] at @s if entity @a[tag=aqua] run setblock ~ ~ ~ minecraft:light_blue_bed[facing=south] replace
execute as @e[tag=aquaB,scores={rotation=0..10}] at @s if entity @a[tag=aqua] run setblock ~ ~ ~ minecraft:light_blue_bed[facing=south] replace

execute as @e[tag=whiteB,scores={rotation=170..180}] at @s if entity @a[tag=white] run setblock ~ ~ ~ minecraft:white_bed[facing=north] replace
execute as @e[tag=whiteB,scores={rotation=-185..0}] at @s if entity @a[tag=white] run setblock ~ ~ ~ minecraft:white_bed[facing=north] replace
execute as @e[tag=whiteB,scores={rotation=170..180}] at @s if entity @a[tag=white] run setblock ^ ^.5 ^1 minecraft:white_bed[facing=north,part=head] replace
execute as @e[tag=whiteB,scores={rotation=-185..0}] at @s if entity @a[tag=white] run setblock ^ ^.5 ^1 minecraft:white_bed[facing=north,part=head] replace
execute as @e[tag=whiteB,scores={rotation=85..93}] at @s if entity @a[tag=white] run setblock ~ ~ ~ minecraft:white_bed[facing=west] replace
execute as @e[tag=whiteB,scores={rotation=85..93}] at @s if entity @a[tag=white] run setblock ^ ^.5 ^1 minecraft:white_bed[facing=west,part=head] replace
execute as @e[tag=whiteB,scores={rotation=-95..-80}] at @s if entity @a[tag=white] run setblock ~ ~ ~ minecraft:white_bed[facing=east] replace
execute as @e[tag=whiteB,scores={rotation=-95..-80}] at @s if entity @a[tag=white] run setblock ^ ^.5 ^1 minecraft:white_bed[facing=east,part=head] replace
execute as @e[tag=whiteB,scores={rotation=-10..0}] at @s if entity @a[tag=white] run setblock ^ ^.5 ^1 minecraft:white_bed[facing=south,part=head] replace
execute as @e[tag=whiteB,scores={rotation=0..10}] at @s if entity @a[tag=white] run setblock ^ ^.5 ^1 minecraft:white_bed[facing=south,part=head] replace
execute as @e[tag=whiteB,scores={rotation=-10..0}] at @s if entity @a[tag=white] run setblock ~ ~ ~ minecraft:white_bed[facing=south] replace
execute as @e[tag=whiteB,scores={rotation=0..10}] at @s if entity @a[tag=white] run setblock ~ ~ ~ minecraft:white_bed[facing=south] replace

execute as @e[tag=pinkB,scores={rotation=170..180}] at @s if entity @a[tag=pink] run setblock ~ ~ ~ minecraft:pink_bed[facing=north] replace
execute as @e[tag=pinkB,scores={rotation=-185..0}] at @s if entity @a[tag=pink] run setblock ~ ~ ~ minecraft:pink_bed[facing=north] replace
execute as @e[tag=pinkB,scores={rotation=170..180}] at @s if entity @a[tag=pink] run setblock ^ ^.5 ^1 minecraft:pink_bed[facing=north,part=head] replace
execute as @e[tag=pinkB,scores={rotation=-185..0}] at @s if entity @a[tag=pink] run setblock ^ ^.5 ^1 minecraft:pink_bed[facing=north,part=head] replace
execute as @e[tag=pinkB,scores={rotation=85..93}] at @s if entity @a[tag=pink] run setblock ~ ~ ~ minecraft:pink_bed[facing=west] replace
execute as @e[tag=pinkB,scores={rotation=85..93}] at @s if entity @a[tag=pink] run setblock ^ ^.5 ^1 minecraft:pink_bed[facing=west,part=head] replace
execute as @e[tag=pinkB,scores={rotation=-95..-80}] at @s if entity @a[tag=pink] run setblock ~ ~ ~ minecraft:pink_bed[facing=east] replace
execute as @e[tag=pinkB,scores={rotation=-95..-80}] at @s if entity @a[tag=pink] run setblock ^ ^.5 ^1 minecraft:pink_bed[facing=east,part=head] replace
execute as @e[tag=pinkB,scores={rotation=-10..0}] at @s if entity @a[tag=pink] run setblock ^ ^.5 ^1 minecraft:pink_bed[facing=south,part=head] replace
execute as @e[tag=pinkB,scores={rotation=0..10}] at @s if entity @a[tag=pink] run setblock ^ ^.5 ^1 minecraft:pink_bed[facing=south,part=head] replace
execute as @e[tag=pinkB,scores={rotation=-10..0}] at @s if entity @a[tag=pink] run setblock ~ ~ ~ minecraft:pink_bed[facing=south] replace
execute as @e[tag=pinkB,scores={rotation=0..10}] at @s if entity @a[tag=pink] run setblock ~ ~ ~ minecraft:pink_bed[facing=south] replace


execute as @e[tag=timer,scores={gametimer=2}] at @s run scoreboard players reset @e[tag=timer] event
execute as @e[tag=timer,scores={gametimer=2}] at @s run clear @a
execute as @e[tag=timer,scores={gametimer=2}] at @s run title @a title {"text":"5","color":"dark_green","bold":"true"}
execute as @e[tag=timer,scores={gametimer=40}] at @s run title @a title {"text":"4","color":"green","bold":"true"}
execute as @e[tag=timer,scores={gametimer=80}] at @s run title @a title {"text":"3","color":"gold","bold":"true"}
execute as @e[tag=timer,scores={gametimer=100}] at @s run title @a title {"text":"2","color":"yellow","bold":"true"}
execute as @e[tag=timer,scores={gametimer=120}] at @s run title @a title {"text":"1","color":"red","bold":"true"}
execute as @e[tag=timer,scores={gametimer=160}] at @s run title @a title {"text":"GO","color":"green","bold":"true"}
execute as @e[tag=timer,scores={gametimer=160}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:wooden_sword"}]}] run give @a[tag=red] minecraft:wooden_sword{CanDestroy:["#breakr"],HideFlags:14,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:10,Operation:0,UUIDLeast:954921,UUIDMost:548372},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:5,Operation:0,UUIDLeast:135599,UUIDMost:893074,Slot:"mainhand"}]} 1
execute as @e[tag=timer,scores={gametimer=160}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:wooden_sword"}]}] run give @a[tag=blue] minecraft:wooden_sword{CanDestroy:["#breakb"],HideFlags:14,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:10,Operation:0,UUIDLeast:954921,UUIDMost:548372},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:5,Operation:0,UUIDLeast:135599,UUIDMost:893074,Slot:"mainhand"}]} 1
execute as @e[tag=timer,scores={gametimer=160}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:wooden_sword"}]}] run give @a[tag=green] minecraft:wooden_sword{CanDestroy:["#breakg"],HideFlags:14,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:10,Operation:0,UUIDLeast:954921,UUIDMost:548372},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:5,Operation:0,UUIDLeast:135599,UUIDMost:893074,Slot:"mainhand"}]} 1
execute as @e[tag=timer,scores={gametimer=160}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:wooden_sword"}]}] run give @a[tag=yellow] minecraft:wooden_sword{CanDestroy:["#breaky"],HideFlags:14,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:10,Operation:0,UUIDLeast:954921,UUIDMost:548372},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:5,Operation:0,UUIDLeast:135599,UUIDMost:893074,Slot:"mainhand"}]} 1
execute as @e[tag=timer,scores={gametimer=160}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:wooden_sword"}]}] run give @a[tag=gray] minecraft:wooden_sword{CanDestroy:["#breakgray"],HideFlags:14,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:10,Operation:0,UUIDLeast:954921,UUIDMost:548372},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:5,Operation:0,UUIDLeast:135599,UUIDMost:893074,Slot:"mainhand"}]} 1
execute as @e[tag=timer,scores={gametimer=160}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:wooden_sword"}]}] run give @a[tag=white] minecraft:wooden_sword{CanDestroy:["#breakw"],HideFlags:14,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:10,Operation:0,UUIDLeast:954921,UUIDMost:548372},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:5,Operation:0,UUIDLeast:135599,UUIDMost:893074,Slot:"mainhand"}]} 1
execute as @e[tag=timer,scores={gametimer=160}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:wooden_sword"}]}] run give @a[tag=aqua] minecraft:wooden_sword{CanDestroy:["#breaka"],HideFlags:14,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:10,Operation:0,UUIDLeast:954921,UUIDMost:548372},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:5,Operation:0,UUIDLeast:135599,UUIDMost:893074,Slot:"mainhand"}]} 1
execute as @e[tag=timer,scores={gametimer=160}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:wooden_sword"}]}] run give @a[tag=pink] minecraft:wooden_sword{CanDestroy:["#breakp"],HideFlags:14,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:10,Operation:0,UUIDLeast:954921,UUIDMost:548372},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:5,Operation:0,UUIDLeast:135599,UUIDMost:893074,Slot:"mainhand"}]} 1
execute as @e[tag=timer,scores={gametimer=160}] at @s run tellraw @a ["",{"text":"=====================================","color":"dark_green"},{"text":"\n               "},{"text":"BEDWARS","color":"yellow"},{"text":"\n       "},{"text":"Commands: Miles Playz ","color":"aqua"},{"text":"[CHANNEL]","color":"green","clickEvent":{"action":"open_url","value":"https://www.youtube.com/channel/UCe2YPfH45-8LQOhj5aKEfZQ?view_as=subscriber"}},{"text":"\n"},{"text":"       Build: Zero Progress ","color":"aqua"},{"text":"[CHANNEL]","color":"green","clickEvent":{"action":"open_url","value":"https://www.youtube.com/channel/UCw43BtfQThFSKLyq7phhivw"}},{"text":"\n\n"},{"text":"How to Play: Gather items to purchase tools\nthat will help you protect your bed and break\nothers. Last team standing wins!","color":"yellow"},{"text":"\n\n"},{"text":"=====================================","color":"dark_green"}]
execute if entity @e[tag=timer,scores={gametimer=160}] run replaceitem entity @a[team=red] armor.head minecraft:leather_helmet{display:{color:16711680},HideFlags:3,Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:binding_curse",lvl:1}]} 1
execute if entity @e[tag=timer,scores={gametimer=160}] run replaceitem entity @a[team=red] armor.chest minecraft:leather_chestplate{display:{color:16711680},HideFlags:3,Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:binding_curse",lvl:1}]} 1
execute if entity @e[tag=timer,scores={gametimer=160}] run replaceitem entity @a[team=red] armor.legs minecraft:leather_leggings{display:{color:16711680},HideFlags:3,Unbreakable:1b} 1
execute if entity @e[tag=timer,scores={gametimer=160}] run replaceitem entity @a[team=red] armor.feet minecraft:leather_boots{display:{color:16711680},HideFlags:3,Unbreakable:1b} 1
execute if entity @e[tag=timer,scores={gametimer=160}] run replaceitem entity @a[team=blue] armor.head minecraft:leather_helmet{display:{color:6911},HideFlags:3,Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:binding_curse",lvl:1}]} 1
execute if entity @e[tag=timer,scores={gametimer=160}] run replaceitem entity @a[team=blue] armor.chest minecraft:leather_chestplate{display:{color:6911},HideFlags:3,Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:binding_curse",lvl:1}]} 1
execute if entity @e[tag=timer,scores={gametimer=160}] run replaceitem entity @a[team=blue] armor.legs minecraft:leather_leggings{display:{color:6911},HideFlags:3,Unbreakable:1b} 1
execute if entity @e[tag=timer,scores={gametimer=160}] run replaceitem entity @a[team=blue] armor.feet minecraft:leather_boots{display:{color:6911},HideFlags:3,Unbreakable:1b} 1
execute if entity @e[tag=timer,scores={gametimer=160}] run replaceitem entity @a[team=green] armor.head minecraft:leather_helmet{display:{color:65331},HideFlags:3,Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:binding_curse",lvl:1}]} 1
execute if entity @e[tag=timer,scores={gametimer=160}] run replaceitem entity @a[team=green] armor.chest minecraft:leather_chestplate{display:{color:65331},HideFlags:3,Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:binding_curse",lvl:1}]} 1
execute if entity @e[tag=timer,scores={gametimer=160}] run replaceitem entity @a[team=green] armor.legs minecraft:leather_leggings{display:{color:65331},HideFlags:3,Unbreakable:1b} 1
execute if entity @e[tag=timer,scores={gametimer=160}] run replaceitem entity @a[team=green] armor.feet minecraft:leather_boots{display:{color:65331},HideFlags:3,Unbreakable:1b} 1
execute if entity @e[tag=timer,scores={gametimer=160}] run replaceitem entity @a[team=gray] armor.head minecraft:leather_helmet{display:{color:8882055},HideFlags:3,Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:binding_curse",lvl:1}]} 1
execute if entity @e[tag=timer,scores={gametimer=160}] run replaceitem entity @a[team=gray] armor.chest minecraft:leather_chestplate{display:{color:8882055},HideFlags:3,Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:binding_curse",lvl:1}]} 1
execute if entity @e[tag=timer,scores={gametimer=160}] run replaceitem entity @a[team=gray] armor.legs minecraft:leather_leggings{display:{color:8882055},HideFlags:3,Unbreakable:1b} 1
execute if entity @e[tag=timer,scores={gametimer=160}] run replaceitem entity @a[team=gray] armor.feet minecraft:leather_boots{display:{color:8882055},HideFlags:3,Unbreakable:1b} 1
execute if entity @e[tag=timer,scores={gametimer=160}] run replaceitem entity @a[team=yellow] armor.head minecraft:leather_helmet{display:{color:16774920},HideFlags:3,Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:binding_curse",lvl:1}]} 1
execute if entity @e[tag=timer,scores={gametimer=160}] run replaceitem entity @a[team=yellow] armor.chest minecraft:leather_chestplate{display:{color:16774920},HideFlags:3,Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:binding_curse",lvl:1}]} 1
execute if entity @e[tag=timer,scores={gametimer=160}] run replaceitem entity @a[team=yellow] armor.legs minecraft:leather_leggings{display:{color:16774920},HideFlags:3,Unbreakable:1b} 1
execute if entity @e[tag=timer,scores={gametimer=160}] run replaceitem entity @a[team=yellow] armor.feet minecraft:leather_boots{display:{color:16774920},HideFlags:3,Unbreakable:1b} 1
execute if entity @e[tag=timer,scores={gametimer=160}] run replaceitem entity @a[team=white] armor.head minecraft:leather_helmet{display:{color:16777215},HideFlags:3,Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:binding_curse",lvl:1}]} 1
execute if entity @e[tag=timer,scores={gametimer=160}] run replaceitem entity @a[team=white] armor.chest minecraft:leather_chestplate{display:{color:16777215},HideFlags:3,Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:binding_curse",lvl:1}]} 1
execute if entity @e[tag=timer,scores={gametimer=160}] run replaceitem entity @a[team=white] armor.legs minecraft:leather_leggings{display:{color:16777215},HideFlags:3,Unbreakable:1b} 1
execute if entity @e[tag=timer,scores={gametimer=160}] run replaceitem entity @a[team=white] armor.feet minecraft:leather_boots{display:{color:16777215},HideFlags:3,Unbreakable:1b} 1
execute if entity @e[tag=timer,scores={gametimer=160}] run replaceitem entity @a[team=aqua] armor.head minecraft:leather_helmet{display:{color:5898239},HideFlags:3,Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:binding_curse",lvl:1}]} 1
execute if entity @e[tag=timer,scores={gametimer=160}] run replaceitem entity @a[team=aqua] armor.chest minecraft:leather_chestplate{display:{color:5898239},HideFlags:3,Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:binding_curse",lvl:1}]} 1
execute if entity @e[tag=timer,scores={gametimer=160}] run replaceitem entity @a[team=aqua] armor.legs minecraft:leather_leggings{display:{color:5898239},HideFlags:3,Unbreakable:1b} 1
execute if entity @e[tag=timer,scores={gametimer=160}] run replaceitem entity @a[team=aqua] armor.feet minecraft:leather_boots{display:{color:5898239},HideFlags:3,Unbreakable:1b} 1
execute if entity @e[tag=timer,scores={gametimer=160}] run replaceitem entity @a[team=pink] armor.head minecraft:leather_helmet{display:{color:16756218},HideFlags:3,Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:binding_curse",lvl:1}]} 1
execute if entity @e[tag=timer,scores={gametimer=160}] run replaceitem entity @a[team=pink] armor.chest minecraft:leather_chestplate{display:{color:16756218},HideFlags:3,Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:binding_curse",lvl:1}]} 1
execute if entity @e[tag=timer,scores={gametimer=160}] run replaceitem entity @a[team=pink] armor.legs minecraft:leather_leggings{display:{color:16756218},HideFlags:3,Unbreakable:1b} 1
execute if entity @e[tag=timer,scores={gametimer=160}] run replaceitem entity @a[team=pink] armor.feet minecraft:leather_boots{display:{color:16756218},HideFlags:3,Unbreakable:1b} 1

execute as @a[tag=red] at @e[tag=redS,limit=1] if entity @e[tag=timer,scores={gametimer=160}] run tp @s ~ ~.5 ~ ~ ~
execute as @a[tag=blue] at @e[tag=blueS,limit=1] if entity @e[tag=timer,scores={gametimer=160}] run tp @s ~ ~.5 ~ ~ ~
execute as @a[tag=green] at @e[tag=greenS,limit=1] if entity @e[tag=timer,scores={gametimer=160}] run tp @s ~ ~.5 ~ ~ ~
execute as @a[tag=yellow] at @e[tag=yellowS,limit=1] if entity @e[tag=timer,scores={gametimer=160}] run tp @s ~ ~.5 ~ ~ ~
execute as @a[tag=gray] at @e[tag=grayS,limit=1] if entity @e[tag=timer,scores={gametimer=160}] run tp @s ~ ~.5 ~ ~ ~
execute as @a[tag=white] at @e[tag=whiteS,limit=1] if entity @e[tag=timer,scores={gametimer=160}] run tp @s ~ ~.5 ~ ~ ~
execute as @a[tag=aqua] at @e[tag=aquaS,limit=1] if entity @e[tag=timer,scores={gametimer=160}] run tp @s ~ ~.5 ~ ~ ~
execute as @a[tag=pink] at @e[tag=pinkS,limit=1] if entity @e[tag=timer,scores={gametimer=160}] run tp @s ~ ~.5 ~ ~ ~

execute as @e[tag=bed] at @s if entity @e[tag=timer,scores={gametimer=100}] run scoreboard players reset @e[tag=bed,type=armor_stand] broke
execute as @e[tag=forge] at @s if entity @e[tag=timer,scores={gametimer=100}] run tag @s add level1
execute as @e[tag=redF] at @s if entity @e[tag=timer,scores={gametimer=100}] run tag @s add active
execute as @e[tag=blueF] at @s if entity @e[tag=timer,scores={gametimer=100}] run tag @s add active
execute as @e[tag=greenF] at @s if entity @e[tag=timer,scores={gametimer=100}] run tag @s add active
execute as @e[tag=yellowF] at @s if entity @e[tag=timer,scores={gametimer=100}] run tag @s add active
execute as @e[tag=grayF] at @s if entity @e[tag=timer,scores={gametimer=100}] run tag @s add active
execute as @e[tag=whiteF] at @s if entity @e[tag=timer,scores={gametimer=100}] run tag @s add active
execute as @e[tag=aquaF] at @s if entity @e[tag=timer,scores={gametimer=100}] run tag @s add active
execute as @e[tag=pinkF] at @s if entity @e[tag=timer,scores={gametimer=100}] run tag @s add active
execute as @e[tag=diaF] at @s if entity @e[tag=timer,scores={gametimer=100}] run tag @s add active
execute as @e[tag=emeraldF] at @s if entity @e[tag=timer,scores={gametimer=100}] run tag @s add active
execute as @e[tag=diaF] at @s if entity @e[tag=timer,scores={gametimer=100}] run tag @s add level1
execute as @e[tag=emeraldF] at @s if entity @e[tag=timer,scores={gametimer=100}] run tag @s add level1

execute unless entity @e[tag=timer,type=armor_stand,scores={clicktimer=1..}] run effect give @a weakness 1 200 true
execute unless entity @e[tag=timer,type=armor_stand,scores={gametimer=160..}] run effect give @a[tag=red] weakness 1 200 true
execute unless entity @e[tag=timer,type=armor_stand,scores={gametimer=160..}] run effect give @a[tag=blue] weakness 1 200 true
execute unless entity @e[tag=timer,type=armor_stand,scores={gametimer=160..}] run effect give @a[tag=green] weakness 1 200 true
execute unless entity @e[tag=timer,type=armor_stand,scores={gametimer=160..}] run effect give @a[tag=yellow] weakness 1 200 true
execute unless entity @e[tag=timer,type=armor_stand,scores={gametimer=160..}] run effect give @a[tag=white] weakness 1 200 true
execute unless entity @e[tag=timer,type=armor_stand,scores={gametimer=160..}] run effect give @a[tag=gray] weakness 1 200 true
execute unless entity @e[tag=timer,type=armor_stand,scores={gametimer=160..}] run effect give @a[tag=aqua] weakness 1 200 true
execute unless entity @e[tag=timer,type=armor_stand,scores={gametimer=160..}] run effect give @a[tag=pink] weakness 1 200 true

execute if entity @e[tag=timer,type=armor_stand,scores={gametimer=1}] run effect give @a instant_health 1 200 true
execute if entity @e[tag=timer,type=armor_stand,scores={gametimer=1}] run replaceitem entity @a enderchest.0 air
execute if entity @e[tag=timer,type=armor_stand,scores={gametimer=1}] run replaceitem entity @a enderchest.1 air
execute if entity @e[tag=timer,type=armor_stand,scores={gametimer=1}] run replaceitem entity @a enderchest.2 air
execute if entity @e[tag=timer,type=armor_stand,scores={gametimer=1}] run replaceitem entity @a enderchest.3 air
execute if entity @e[tag=timer,type=armor_stand,scores={gametimer=1}] run replaceitem entity @a enderchest.4 air
execute if entity @e[tag=timer,type=armor_stand,scores={gametimer=1}] run replaceitem entity @a enderchest.5 air
execute if entity @e[tag=timer,type=armor_stand,scores={gametimer=1}] run replaceitem entity @a enderchest.6 air
execute if entity @e[tag=timer,type=armor_stand,scores={gametimer=1}] run replaceitem entity @a enderchest.7 air
execute if entity @e[tag=timer,type=armor_stand,scores={gametimer=1}] run replaceitem entity @a enderchest.8 air
execute if entity @e[tag=timer,type=armor_stand,scores={gametimer=1}] run replaceitem entity @a enderchest.9 air
execute if entity @e[tag=timer,type=armor_stand,scores={gametimer=1}] run replaceitem entity @a enderchest.10 air
execute if entity @e[tag=timer,type=armor_stand,scores={gametimer=1}] run replaceitem entity @a enderchest.11 air
execute if entity @e[tag=timer,type=armor_stand,scores={gametimer=1}] run replaceitem entity @a enderchest.12 air
execute if entity @e[tag=timer,type=armor_stand,scores={gametimer=1}] run replaceitem entity @a enderchest.13 air
execute if entity @e[tag=timer,type=armor_stand,scores={gametimer=1}] run replaceitem entity @a enderchest.14 air
execute if entity @e[tag=timer,type=armor_stand,scores={gametimer=1}] run replaceitem entity @a enderchest.15 air
execute if entity @e[tag=timer,type=armor_stand,scores={gametimer=1}] run replaceitem entity @a enderchest.16 air
execute if entity @e[tag=timer,type=armor_stand,scores={gametimer=1}] run replaceitem entity @a enderchest.17 air
execute if entity @e[tag=timer,type=armor_stand,scores={gametimer=1}] run replaceitem entity @a enderchest.18 air
execute if entity @e[tag=timer,type=armor_stand,scores={gametimer=1}] run replaceitem entity @a enderchest.19 air
execute if entity @e[tag=timer,type=armor_stand,scores={gametimer=1}] run replaceitem entity @a enderchest.20 air
execute if entity @e[tag=timer,type=armor_stand,scores={gametimer=1}] run replaceitem entity @a enderchest.21 air
execute if entity @e[tag=timer,type=armor_stand,scores={gametimer=1}] run replaceitem entity @a enderchest.22 air
execute if entity @e[tag=timer,type=armor_stand,scores={gametimer=1}] run replaceitem entity @a enderchest.23 air
execute if entity @e[tag=timer,type=armor_stand,scores={gametimer=1}] run replaceitem entity @a enderchest.24 air
execute if entity @e[tag=timer,type=armor_stand,scores={gametimer=1}] run replaceitem entity @a enderchest.25 air
execute if entity @e[tag=timer,type=armor_stand,scores={gametimer=1}] run replaceitem entity @a enderchest.26 air

execute as @e[type=armor_stand,tag=redS] at @s run tp @s ~ ~ ~ facing entity @e[type=armor_stand,tag=redB,limit=1,sort=nearest] eyes
execute as @e[type=armor_stand,tag=blueS] at @s run tp @s ~ ~ ~ facing entity @e[type=armor_stand,tag=blueB,limit=1,sort=nearest] eyes
execute as @e[type=armor_stand,tag=greenS] at @s run tp @s ~ ~ ~ facing entity @e[type=armor_stand,tag=greenB,limit=1,sort=nearest] eyes
execute as @e[type=armor_stand,tag=yellowS] at @s run tp @s ~ ~ ~ facing entity @e[type=armor_stand,tag=yellowB,limit=1,sort=nearest] eyes
execute as @e[type=armor_stand,tag=grayS] at @s run tp @s ~ ~ ~ facing entity @e[type=armor_stand,tag=grayB,limit=1,sort=nearest] eyes
execute as @e[type=armor_stand,tag=whiteS] at @s run tp @s ~ ~ ~ facing entity @e[type=armor_stand,tag=whiteB,limit=1,sort=nearest] eyes
execute as @e[type=armor_stand,tag=aquaS] at @s run tp @s ~ ~ ~ facing entity @e[type=armor_stand,tag=aquaB,limit=1,sort=nearest] eyes
execute as @e[type=armor_stand,tag=pinkS] at @s run tp @s ~ ~ ~ facing entity @e[type=armor_stand,tag=pinkB,limit=1,sort=nearest] eyes

execute as @e[type=armor_stand,tag=redS] at @s run spawnpoint @a[tag=red]
execute as @e[type=armor_stand,tag=blueS] at @s run spawnpoint @a[tag=blue]
execute as @e[type=armor_stand,tag=greenS] at @s run spawnpoint @a[tag=green]
execute as @e[type=armor_stand,tag=yellowS] at @s run spawnpoint @a[tag=yellow]
execute as @e[type=armor_stand,tag=grayS] at @s run spawnpoint @a[tag=gray]
execute as @e[type=armor_stand,tag=whiteS] at @s run spawnpoint @a[tag=white]
execute as @e[type=armor_stand,tag=aquaS] at @s run spawnpoint @a[tag=aqua]
execute as @e[type=armor_stand,tag=pinkS] at @s run spawnpoint @a[tag=pink]
