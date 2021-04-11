###Diamond Forge Upgrade

give @a[tag=red,tag=!ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:iron_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=2..}] minecraft:iron_nugget 1
execute as @a[tag=red,tag=!ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:iron_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=2..}] at @s run tellraw @a[tag=red] ["",{"text":"You just purchased ","color":"green"},{"text":"IRON FORGE"}]
clear @a[tag=red,tag=!ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:iron_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=2..}] diamond 2
execute as @a[tag=red,tag=!ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:iron_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=..2}] at @s run tellraw @s ["",{"text":"You don't have enough ","color":"red"},{"text":"DIAMONDS"}]
clear @a[tag=red,nbt={Inventory:[{id:"minecraft:iron_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] iron_nugget{Enchantments:[{id:"minecraft:protection",lvl:1}]}
execute if entity @a[tag=red,tag=!ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:iron_nugget"}]}] run tag @a[tag=red] add ironf
execute if entity @e[tag=redF,tag=level2] run clear @a[tag=red,tag=ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:iron_nugget"}]}] iron_nugget

give @a[tag=red,tag=ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=4..}] minecraft:gold_nugget 1
execute as @a[tag=red,tag=ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=4..}] at @s run tellraw @a[tag=red] ["",{"text":"You just purchased ","color":"green"},{"text":"GOLDEN FORGE"}]
clear @a[tag=red,tag=ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=4..}] diamond 4
execute as @a[tag=red,tag=ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=..4}] at @s run tellraw @s ["",{"text":"You don't have enough ","color":"red"},{"text":"DIAMONDS"}]
clear @a[tag=red,nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] gold_nugget{Enchantments:[{id:"minecraft:protection",lvl:1}]}
execute if entity @a[tag=red,tag=ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:gold_nugget"}]}] run tag @a[tag=red] add goldf
execute if entity @e[tag=redF,tag=level3,tag=level2] run clear @a[tag=red,tag=ironf,tag=goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:gold_nugget"}]}] gold_nugget


give @a[tag=red,tag=ironf,tag=goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:emerald_ore",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=3..}] minecraft:emerald_ore 1
execute as @a[tag=red,tag=ironf,tag=goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:emerald_ore",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=3..}] at @s run tellraw @a[tag=red] ["",{"text":"You just purchased ","color":"green"},{"text":"EMERALD FORGE"}]
clear @a[tag=red,tag=ironf,tag=goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:emerald_ore",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=3..}] diamond 3
execute as @a[tag=red,tag=ironf,tag=goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:emerald_ore",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=..3}] at @s run tellraw @s ["",{"text":"You don't have enough ","color":"red"},{"text":"DIAMONDS"}]
clear @a[tag=red,nbt={Inventory:[{id:"minecraft:emerald_ore",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] emerald_ore{Enchantments:[{id:"minecraft:protection",lvl:1}]}
execute if entity @a[tag=red,tag=ironf,tag=goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:emerald_ore"}]}] run tag @a[tag=red] add emf
execute if entity @e[tag=redF,tag=level4,tag=level3,tag=level2,tag=level1] run clear @a[tag=red,tag=ironf,tag=goldf,tag=emf,nbt={Inventory:[{id:"minecraft:emerald_ore"}]}] emerald_ore

###

give @a[tag=blue,tag=!ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:iron_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=2..}] minecraft:iron_nugget 1
execute as @a[tag=blue,tag=!ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:iron_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=2..}] at @s run tellraw @a[tag=blue] ["",{"text":"You just purchased ","color":"green"},{"text":"IRON FORGE"}]
clear @a[tag=blue,tag=!ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:iron_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=2..}] diamond 2
execute as @a[tag=blue,tag=!ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:iron_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=..2}] at @s run tellraw @s ["",{"text":"You don't have enough ","color":"red"},{"text":"DIAMONDS"}]
clear @a[tag=blue,nbt={Inventory:[{id:"minecraft:iron_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] iron_nugget{Enchantments:[{id:"minecraft:protection",lvl:1}]}
execute if entity @a[tag=blue,tag=!ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:iron_nugget"}]}] run tag @a[tag=blue] add ironf
execute if entity @e[tag=blueF,tag=level2] run clear @a[tag=blue,tag=ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:iron_nugget"}]}] iron_nugget

give @a[tag=blue,tag=ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=4..}] minecraft:gold_nugget 1
execute as @a[tag=blue,tag=ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=4..}] at @s run tellraw @a[tag=blue] ["",{"text":"You just purchased ","color":"green"},{"text":"GOLDEN FORGE"}]
clear @a[tag=blue,tag=ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=4..}] diamond 4
execute as @a[tag=blue,tag=ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=..4}] at @s run tellraw @s ["",{"text":"You don't have enough ","color":"red"},{"text":"DIAMONDS"}]
clear @a[tag=blue,nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] gold_nugget{Enchantments:[{id:"minecraft:protection",lvl:1}]}
execute if entity @a[tag=blue,tag=ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:gold_nugget"}]}] run tag @a[tag=blue] add goldf
execute if entity @e[tag=blueF,tag=level3,tag=level2] run clear @a[tag=blue,tag=ironf,tag=goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:gold_nugget"}]}] gold_nugget


give @a[tag=blue,tag=ironf,tag=goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:emerald_ore",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=3..}] minecraft:emerald_ore 1
execute as @a[tag=blue,tag=ironf,tag=goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:emerald_ore",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=3..}] at @s run tellraw @a[tag=blue] ["",{"text":"You just purchased ","color":"green"},{"text":"EMERALD FORGE"}]
clear @a[tag=blue,tag=ironf,tag=goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:emerald_ore",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=3..}] diamond 3
execute as @a[tag=blue,tag=ironf,tag=goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:emerald_ore",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=..3}] at @s run tellraw @s ["",{"text":"You don't have enough ","color":"red"},{"text":"DIAMONDS"}]
clear @a[tag=blue,nbt={Inventory:[{id:"minecraft:emerald_ore",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] emerald_ore{Enchantments:[{id:"minecraft:protection",lvl:1}]}
execute if entity @a[tag=blue,tag=ironf,tag=goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:emerald_ore"}]}] run tag @a[tag=blue] add emf
execute if entity @e[tag=blueF,tag=level4,tag=level3,tag=level2,tag=level1] run clear @a[tag=blue,tag=ironf,tag=goldf,tag=emf,nbt={Inventory:[{id:"minecraft:emerald_ore"}]}] emerald_ore

###

give @a[tag=green,tag=!ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:iron_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=2..}] minecraft:iron_nugget 1
execute as @a[tag=green,tag=!ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:iron_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=2..}] at @s run tellraw @a[tag=green] ["",{"text":"You just purchased ","color":"green"},{"text":"IRON FORGE"}]
clear @a[tag=green,tag=!ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:iron_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=2..}] diamond 2
execute as @a[tag=green,tag=!ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:iron_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=..2}] at @s run tellraw @s ["",{"text":"You don't have enough ","color":"red"},{"text":"DIAMONDS"}]
clear @a[tag=green,nbt={Inventory:[{id:"minecraft:iron_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] iron_nugget{Enchantments:[{id:"minecraft:protection",lvl:1}]}
execute if entity @a[tag=green,tag=!ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:iron_nugget"}]}] run tag @a[tag=green] add ironf
execute if entity @e[tag=greenF,tag=level2] run clear @a[tag=green,tag=ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:iron_nugget"}]}] iron_nugget

give @a[tag=green,tag=ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=4..}] minecraft:gold_nugget 1
execute as @a[tag=green,tag=ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=4..}] at @s run tellraw @a[tag=green] ["",{"text":"You just purchased ","color":"green"},{"text":"GOLDEN FORGE"}]
clear @a[tag=green,tag=ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=4..}] diamond 4
execute as @a[tag=green,tag=ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=..4}] at @s run tellraw @s ["",{"text":"You don't have enough ","color":"red"},{"text":"DIAMONDS"}]
clear @a[tag=green,nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] gold_nugget{Enchantments:[{id:"minecraft:protection",lvl:1}]}
execute if entity @a[tag=green,tag=ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:gold_nugget"}]}] run tag @a[tag=green] add goldf
execute if entity @e[tag=greenF,tag=level3,tag=level2] run clear @a[tag=green,tag=ironf,tag=goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:gold_nugget"}]}] gold_nugget


give @a[tag=green,tag=ironf,tag=goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:emerald_ore",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=3..}] minecraft:emerald_ore 1
execute as @a[tag=green,tag=ironf,tag=goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:emerald_ore",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=3..}] at @s run tellraw @a[tag=green] ["",{"text":"You just purchased ","color":"green"},{"text":"EMERALD FORGE"}]
clear @a[tag=green,tag=ironf,tag=goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:emerald_ore",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=3..}] diamond 3
execute as @a[tag=green,tag=ironf,tag=goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:emerald_ore",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=..3}] at @s run tellraw @s ["",{"text":"You don't have enough ","color":"red"},{"text":"DIAMONDS"}]
clear @a[tag=green,nbt={Inventory:[{id:"minecraft:emerald_ore",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] emerald_ore{Enchantments:[{id:"minecraft:protection",lvl:1}]}
execute if entity @a[tag=green,tag=ironf,tag=goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:emerald_ore"}]}] run tag @a[tag=green] add emf
execute if entity @e[tag=greenF,tag=level4,tag=level3,tag=level2,tag=level1] run clear @a[tag=green,tag=ironf,tag=goldf,tag=emf,nbt={Inventory:[{id:"minecraft:emerald_ore"}]}] emerald_ore

###

give @a[tag=yellow,tag=!ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:iron_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=2..}] minecraft:iron_nugget 1
execute as @a[tag=yellow,tag=!ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:iron_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=2..}] at @s run tellraw @a[tag=yellow] ["",{"text":"You just purchased ","color":"green"},{"text":"IRON FORGE"}]
clear @a[tag=yellow,tag=!ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:iron_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=2..}] diamond 2
execute as @a[tag=yellow,tag=!ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:iron_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=..2}] at @s run tellraw @s ["",{"text":"You don't have enough ","color":"red"},{"text":"DIAMONDS"}]
clear @a[tag=yellow,nbt={Inventory:[{id:"minecraft:iron_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] iron_nugget{Enchantments:[{id:"minecraft:protection",lvl:1}]}
execute if entity @a[tag=yellow,tag=!ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:iron_nugget"}]}] run tag @a[tag=yellow] add ironf
execute if entity @e[tag=yellowF,tag=level2] run clear @a[tag=yellow,tag=ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:iron_nugget"}]}] iron_nugget

give @a[tag=yellow,tag=ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=4..}] minecraft:gold_nugget 1
execute as @a[tag=yellow,tag=ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=4..}] at @s run tellraw @a[tag=yellow] ["",{"text":"You just purchased ","color":"green"},{"text":"GOLDEN FORGE"}]
clear @a[tag=yellow,tag=ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=4..}] diamond 4
execute as @a[tag=yellow,tag=ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=..4}] at @s run tellraw @s ["",{"text":"You don't have enough ","color":"red"},{"text":"DIAMONDS"}]
clear @a[tag=yellow,nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] gold_nugget{Enchantments:[{id:"minecraft:protection",lvl:1}]}
execute if entity @a[tag=yellow,tag=ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:gold_nugget"}]}] run tag @a[tag=yellow] add goldf
execute if entity @e[tag=yellowF,tag=level3,tag=level2] run clear @a[tag=yellow,tag=ironf,tag=goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:gold_nugget"}]}] gold_nugget


give @a[tag=yellow,tag=ironf,tag=goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:emerald_ore",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=3..}] minecraft:emerald_ore 1
execute as @a[tag=yellow,tag=ironf,tag=goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:emerald_ore",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=3..}] at @s run tellraw @a[tag=yellow] ["",{"text":"You just purchased ","color":"green"},{"text":"EMERALD FORGE"}]
clear @a[tag=yellow,tag=ironf,tag=goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:emerald_ore",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=3..}] diamond 3
execute as @a[tag=yellow,tag=ironf,tag=goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:emerald_ore",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=..3}] at @s run tellraw @s ["",{"text":"You don't have enough ","color":"red"},{"text":"DIAMONDS"}]
clear @a[tag=yellow,nbt={Inventory:[{id:"minecraft:emerald_ore",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] emerald_ore{Enchantments:[{id:"minecraft:protection",lvl:1}]}
execute if entity @a[tag=yellow,tag=ironf,tag=goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:emerald_ore"}]}] run tag @a[tag=yellow] add emf
execute if entity @e[tag=yellowF,tag=level4,tag=level3,tag=level2,tag=level1] run clear @a[tag=yellow,tag=ironf,tag=goldf,tag=emf,nbt={Inventory:[{id:"minecraft:emerald_ore"}]}] emerald_ore

###

give @a[tag=gray,tag=!ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:iron_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=2..}] minecraft:iron_nugget 1
execute as @a[tag=gray,tag=!ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:iron_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=2..}] at @s run tellraw @a[tag=gray] ["",{"text":"You just purchased ","color":"green"},{"text":"IRON FORGE"}]
clear @a[tag=gray,tag=!ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:iron_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=2..}] diamond 2
execute as @a[tag=gray,tag=!ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:iron_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=..2}] at @s run tellraw @s ["",{"text":"You don't have enough ","color":"red"},{"text":"DIAMONDS"}]
clear @a[tag=gray,nbt={Inventory:[{id:"minecraft:iron_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] iron_nugget{Enchantments:[{id:"minecraft:protection",lvl:1}]}
execute if entity @a[tag=gray,tag=!ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:iron_nugget"}]}] run tag @a[tag=gray] add ironf
execute if entity @e[tag=grayF,tag=level2] run clear @a[tag=gray,tag=ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:iron_nugget"}]}] iron_nugget

give @a[tag=gray,tag=ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=4..}] minecraft:gold_nugget 1
execute as @a[tag=gray,tag=ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=4..}] at @s run tellraw @a[tag=gray] ["",{"text":"You just purchased ","color":"green"},{"text":"GOLDEN FORGE"}]
clear @a[tag=gray,tag=ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=4..}] diamond 4
execute as @a[tag=gray,tag=ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=..4}] at @s run tellraw @s ["",{"text":"You don't have enough ","color":"red"},{"text":"DIAMONDS"}]
clear @a[tag=gray,nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] gold_nugget{Enchantments:[{id:"minecraft:protection",lvl:1}]}
execute if entity @a[tag=gray,tag=ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:gold_nugget"}]}] run tag @a[tag=gray] add goldf
execute if entity @e[tag=grayF,tag=level3,tag=level2] run clear @a[tag=gray,tag=ironf,tag=goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:gold_nugget"}]}] gold_nugget


give @a[tag=gray,tag=ironf,tag=goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:emerald_ore",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=3..}] minecraft:emerald_ore 1
execute as @a[tag=gray,tag=ironf,tag=goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:emerald_ore",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=3..}] at @s run tellraw @a[tag=gray] ["",{"text":"You just purchased ","color":"green"},{"text":"EMERALD FORGE"}]
clear @a[tag=gray,tag=ironf,tag=goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:emerald_ore",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=3..}] diamond 3
execute as @a[tag=gray,tag=ironf,tag=goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:emerald_ore",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=..3}] at @s run tellraw @s ["",{"text":"You don't have enough ","color":"red"},{"text":"DIAMONDS"}]
clear @a[tag=gray,nbt={Inventory:[{id:"minecraft:emerald_ore",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] emerald_ore{Enchantments:[{id:"minecraft:protection",lvl:1}]}
execute if entity @a[tag=gray,tag=ironf,tag=goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:emerald_ore"}]}] run tag @a[tag=gray] add emf
execute if entity @e[tag=grayF,tag=level4,tag=level3,tag=level2,tag=level1] run clear @a[tag=gray,tag=ironf,tag=goldf,tag=emf,nbt={Inventory:[{id:"minecraft:emerald_ore"}]}] emerald_ore

###

give @a[tag=white,tag=!ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:iron_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=2..}] minecraft:iron_nugget 1
execute as @a[tag=white,tag=!ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:iron_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=2..}] at @s run tellraw @a[tag=white] ["",{"text":"You just purchased ","color":"green"},{"text":"IRON FORGE"}]
clear @a[tag=white,tag=!ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:iron_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=2..}] diamond 2
execute as @a[tag=white,tag=!ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:iron_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=..2}] at @s run tellraw @s ["",{"text":"You don't have enough ","color":"red"},{"text":"DIAMONDS"}]
clear @a[tag=white,nbt={Inventory:[{id:"minecraft:iron_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] iron_nugget{Enchantments:[{id:"minecraft:protection",lvl:1}]}
execute if entity @a[tag=white,tag=!ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:iron_nugget"}]}] run tag @a[tag=white] add ironf
execute if entity @e[tag=whiteF,tag=level2] run clear @a[tag=white,tag=ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:iron_nugget"}]}] iron_nugget

give @a[tag=white,tag=ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=4..}] minecraft:gold_nugget 1
execute as @a[tag=white,tag=ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=4..}] at @s run tellraw @a[tag=white] ["",{"text":"You just purchased ","color":"green"},{"text":"GOLDEN FORGE"}]
clear @a[tag=white,tag=ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=4..}] diamond 4
execute as @a[tag=white,tag=ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=..4}] at @s run tellraw @s ["",{"text":"You don't have enough ","color":"red"},{"text":"DIAMONDS"}]
clear @a[tag=white,nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] gold_nugget{Enchantments:[{id:"minecraft:protection",lvl:1}]}
execute if entity @a[tag=white,tag=ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:gold_nugget"}]}] run tag @a[tag=white] add goldf
execute if entity @e[tag=whiteF,tag=level3,tag=level2] run clear @a[tag=white,tag=ironf,tag=goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:gold_nugget"}]}] gold_nugget


give @a[tag=white,tag=ironf,tag=goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:emerald_ore",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=3..}] minecraft:emerald_ore 1
execute as @a[tag=white,tag=ironf,tag=goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:emerald_ore",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=3..}] at @s run tellraw @a[tag=white] ["",{"text":"You just purchased ","color":"green"},{"text":"EMERALD FORGE"}]
clear @a[tag=white,tag=ironf,tag=goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:emerald_ore",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=3..}] diamond 3
execute as @a[tag=white,tag=ironf,tag=goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:emerald_ore",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=..3}] at @s run tellraw @s ["",{"text":"You don't have enough ","color":"red"},{"text":"DIAMONDS"}]
clear @a[tag=white,nbt={Inventory:[{id:"minecraft:emerald_ore",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] emerald_ore{Enchantments:[{id:"minecraft:protection",lvl:1}]}
execute if entity @a[tag=white,tag=ironf,tag=goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:emerald_ore"}]}] run tag @a[tag=white] add emf
execute if entity @e[tag=whiteF,tag=level4,tag=level3,tag=level2,tag=level1] run clear @a[tag=white,tag=ironf,tag=goldf,tag=emf,nbt={Inventory:[{id:"minecraft:emerald_ore"}]}] emerald_ore

###

give @a[tag=aqua,tag=!ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:iron_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=2..}] minecraft:iron_nugget 1
execute as @a[tag=aqua,tag=!ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:iron_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=2..}] at @s run tellraw @a[tag=aqua] ["",{"text":"You just purchased ","color":"green"},{"text":"IRON FORGE"}]
clear @a[tag=aqua,tag=!ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:iron_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=2..}] diamond 2
execute as @a[tag=aqua,tag=!ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:iron_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=..2}] at @s run tellraw @s ["",{"text":"You don't have enough ","color":"red"},{"text":"DIAMONDS"}]
clear @a[tag=aqua,nbt={Inventory:[{id:"minecraft:iron_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] iron_nugget{Enchantments:[{id:"minecraft:protection",lvl:1}]}
execute if entity @a[tag=aqua,tag=!ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:iron_nugget"}]}] run tag @a[tag=aqua] add ironf
execute if entity @e[tag=aquaF,tag=level2] run clear @a[tag=aqua,tag=ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:iron_nugget"}]}] iron_nugget

give @a[tag=aqua,tag=ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=4..}] minecraft:gold_nugget 1
execute as @a[tag=aqua,tag=ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=4..}] at @s run tellraw @a[tag=aqua] ["",{"text":"You just purchased ","color":"green"},{"text":"GOLDEN FORGE"}]
clear @a[tag=aqua,tag=ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=4..}] diamond 4
execute as @a[tag=aqua,tag=ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=..4}] at @s run tellraw @s ["",{"text":"You don't have enough ","color":"red"},{"text":"DIAMONDS"}]
clear @a[tag=aqua,nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] gold_nugget{Enchantments:[{id:"minecraft:protection",lvl:1}]}
execute if entity @a[tag=aqua,tag=ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:gold_nugget"}]}] run tag @a[tag=aqua] add goldf
execute if entity @e[tag=aquaF,tag=level3,tag=level2] run clear @a[tag=aqua,tag=ironf,tag=goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:gold_nugget"}]}] gold_nugget


give @a[tag=aqua,tag=ironf,tag=goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:emerald_ore",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=3..}] minecraft:emerald_ore 1
execute as @a[tag=aqua,tag=ironf,tag=goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:emerald_ore",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=3..}] at @s run tellraw @a[tag=aqua] ["",{"text":"You just purchased ","color":"green"},{"text":"EMERALD FORGE"}]
clear @a[tag=aqua,tag=ironf,tag=goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:emerald_ore",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=3..}] diamond 3
execute as @a[tag=aqua,tag=ironf,tag=goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:emerald_ore",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=..3}] at @s run tellraw @s ["",{"text":"You don't have enough ","color":"red"},{"text":"DIAMONDS"}]
clear @a[tag=aqua,nbt={Inventory:[{id:"minecraft:emerald_ore",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] emerald_ore{Enchantments:[{id:"minecraft:protection",lvl:1}]}
execute if entity @a[tag=aqua,tag=ironf,tag=goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:emerald_ore"}]}] run tag @a[tag=aqua] add emf
execute if entity @e[tag=aquaF,tag=level4,tag=level3,tag=level2,tag=level1] run clear @a[tag=aqua,tag=ironf,tag=goldf,tag=emf,nbt={Inventory:[{id:"minecraft:emerald_ore"}]}] emerald_ore

###

give @a[tag=pink,tag=!ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:iron_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=2..}] minecraft:iron_nugget 1
execute as @a[tag=pink,tag=!ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:iron_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=2..}] at @s run tellraw @a[tag=pink] ["",{"text":"You just purchased ","color":"green"},{"text":"IRON FORGE"}]
clear @a[tag=pink,tag=!ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:iron_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=2..}] diamond 2
execute as @a[tag=pink,tag=!ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:iron_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=..2}] at @s run tellraw @s ["",{"text":"You don't have enough ","color":"red"},{"text":"DIAMONDS"}]
clear @a[tag=pink,nbt={Inventory:[{id:"minecraft:iron_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] iron_nugget{Enchantments:[{id:"minecraft:protection",lvl:1}]}
execute if entity @a[tag=pink,tag=!ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:iron_nugget"}]}] run tag @a[tag=pink] add ironf
execute if entity @e[tag=pinkF,tag=level2] run clear @a[tag=pink,tag=ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:iron_nugget"}]}] iron_nugget

give @a[tag=pink,tag=ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=4..}] minecraft:gold_nugget 1
execute as @a[tag=pink,tag=ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=4..}] at @s run tellraw @a[tag=pink] ["",{"text":"You just purchased ","color":"green"},{"text":"GOLDEN FORGE"}]
clear @a[tag=pink,tag=ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=4..}] diamond 4
execute as @a[tag=pink,tag=ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=..4}] at @s run tellraw @s ["",{"text":"You don't have enough ","color":"red"},{"text":"DIAMONDS"}]
clear @a[tag=pink,nbt={Inventory:[{id:"minecraft:gold_nugget",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] gold_nugget{Enchantments:[{id:"minecraft:protection",lvl:1}]}
execute if entity @a[tag=pink,tag=ironf,tag=!goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:gold_nugget"}]}] run tag @a[tag=pink] add goldf
execute if entity @e[tag=pinkF,tag=level3,tag=level2] run clear @a[tag=pink,tag=ironf,tag=goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:gold_nugget"}]}] gold_nugget


give @a[tag=pink,tag=ironf,tag=goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:emerald_ore",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=3..}] minecraft:emerald_ore 1
execute as @a[tag=pink,tag=ironf,tag=goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:emerald_ore",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=3..}] at @s run tellraw @a[tag=pink] ["",{"text":"You just purchased ","color":"green"},{"text":"EMERALD FORGE"}]
clear @a[tag=pink,tag=ironf,tag=goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:emerald_ore",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=3..}] diamond 3
execute as @a[tag=pink,tag=ironf,tag=goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:emerald_ore",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=..3}] at @s run tellraw @s ["",{"text":"You don't have enough ","color":"red"},{"text":"DIAMONDS"}]
clear @a[tag=pink,nbt={Inventory:[{id:"minecraft:emerald_ore",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] emerald_ore{Enchantments:[{id:"minecraft:protection",lvl:1}]}
execute if entity @a[tag=pink,tag=ironf,tag=goldf,tag=!emf,nbt={Inventory:[{id:"minecraft:emerald_ore"}]}] run tag @a[tag=pink] add emf
execute if entity @e[tag=pinkF,tag=level4,tag=level3,tag=level2,tag=level1] run clear @a[tag=pink,tag=ironf,tag=goldf,tag=emf,nbt={Inventory:[{id:"minecraft:emerald_ore"}]}] emerald_ore


### Diamond Prot Upgrades

tag @a[tag=red,tag=!1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=2..}] add prot1
execute as @a[tag=red,tag=!1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=2..}] at @s run tellraw @a[tag=red] ["",{"text":"You just purchased ","color":"green"},{"text":"PROTECTION 1"}]
tag @a[tag=red,tag=!1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=2..}] add 1prot
clear @a[tag=red,tag=1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=2..}] diamond 2
execute as @a[tag=red,tag=!1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=..2}] at @s run tellraw @s ["",{"text":"You don't have enough ","color":"red"},{"text":"DIAMONDS"}]
clear @a[tag=red,nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] chainmail_chestplate{Enchantments:[{id:"minecraft:protection",lvl:1}]}



tag @a[tag=red,tag=1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:iron_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=4..}] add prot2
execute as @a[tag=red,tag=1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:iron_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=4..}] at @s run tellraw @a[tag=red] ["",{"text":"You just purchased ","color":"green"},{"text":"PROTECTION 2"}]
tag @a[tag=red,tag=1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:iron_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=4..}] add 2prot
clear @a[tag=red,tag=1prot,tag=2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:iron_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=4..}] diamond 4
execute as @a[tag=red,tag=1prot,tag=2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:iron_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=..4}] at @s run tellraw @s ["",{"text":"You don't have enough ","color":"red"},{"text":"DIAMONDS"}]
clear @a[tag=red,nbt={Inventory:[{id:"minecraft:iron_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] iron_chestplate{Enchantments:[{id:"minecraft:protection",lvl:1}]}
tag @a[tag=red,tag=2prot] remove 1prot

tag @a[tag=red,tag=!1prot,tag=2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:golden_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=8..}] add prot3
execute as @a[tag=red,tag=!1prot,tag=2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:golden_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=8..}] at @s run tellraw @a[tag=red] ["",{"text":"You just purchased ","color":"green"},{"text":"PROTECTION 3"}]
tag @a[tag=red,tag=!1prot,tag=2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:golden_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=8..}] add 3prot
clear @a[tag=red,tag=!1prot,tag=2prot,tag=3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:golden_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=8..}] diamond 8
execute as @a[tag=red,tag=!1prot,tag=2prot,tag=3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:golden_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=..8}] at @s run tellraw @s ["",{"text":"You don't have enough ","color":"red"},{"text":"DIAMONDS"}]
clear @a[tag=red,nbt={Inventory:[{id:"minecraft:golden_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] golden_chestplate{Enchantments:[{id:"minecraft:protection",lvl:1}]}
tag @a[tag=red,tag=3prot] remove 2prot

tag @a[tag=red,tag=!1prot,tag=!2prot,tag=3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:diamond_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=16..}] add prot4
execute as @a[tag=red,tag=!1prot,tag=!2prot,tag=3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:diamond_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=16..}] at @a[tag=red] run tellraw @s ["",{"text":"You just purchased ","color":"green"},{"text":"PROTECTION 4"}]
tag @a[tag=red,tag=!1prot,tag=!2prot,tag=3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:diamond_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=16..}] add 4prot
clear @a[tag=red,tag=!1prot,tag=!2prot,tag=3prot,tag=4prot,nbt={Inventory:[{id:"minecraft:diamond_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=16..}] diamond 16
execute as @a[tag=red,tag=!1prot,tag=!2prot,tag=3prot,tag=4prot,nbt={Inventory:[{id:"minecraft:diamond_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=..16}] at @s run tellraw @s ["",{"text":"You don't have enough ","color":"red"},{"text":"DIAMONDS"}]
clear @a[tag=red,nbt={Inventory:[{id:"minecraft:diamond_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] diamond_chestplate{Enchantments:[{id:"minecraft:protection",lvl:1}]}
tag @a[tag=red,tag=4prot] remove 3prot

###

tag @a[tag=blue,tag=!1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=2..}] add prot1
execute as @a[tag=blue,tag=!1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=2..}] at @s run tellraw @a[tag=blue] ["",{"text":"You just purchased ","color":"green"},{"text":"PROTECTION 1"}]
tag @a[tag=blue,tag=!1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=2..}] add 1prot
clear @a[tag=blue,tag=1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=2..}] diamond 2
execute as @a[tag=blue,tag=!1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=..2}] at @s run tellraw @s ["",{"text":"You don't have enough ","color":"red"},{"text":"DIAMONDS"}]
clear @a[tag=blue,nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] chainmail_chestplate{Enchantments:[{id:"minecraft:protection",lvl:1}]}



tag @a[tag=blue,tag=1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:iron_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=4..}] add prot2
execute as @a[tag=blue,tag=1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:iron_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=4..}] at @s run tellraw @a[tag=blue] ["",{"text":"You just purchased ","color":"green"},{"text":"PROTECTION 2"}]
tag @a[tag=blue,tag=1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:iron_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=4..}] add 2prot
clear @a[tag=blue,tag=1prot,tag=2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:iron_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=4..}] diamond 4
execute as @a[tag=blue,tag=1prot,tag=2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:iron_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=..4}] at @s run tellraw @s ["",{"text":"You don't have enough ","color":"red"},{"text":"DIAMONDS"}]
clear @a[tag=blue,nbt={Inventory:[{id:"minecraft:iron_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] iron_chestplate{Enchantments:[{id:"minecraft:protection",lvl:1}]}
tag @a[tag=blue,tag=2prot] remove 1prot

tag @a[tag=blue,tag=!1prot,tag=2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:golden_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=8..}] add prot3
execute as @a[tag=blue,tag=!1prot,tag=2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:golden_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=8..}] at @s run tellraw @a[tag=blue] ["",{"text":"You just purchased ","color":"green"},{"text":"PROTECTION 3"}]
tag @a[tag=blue,tag=!1prot,tag=2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:golden_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=8..}] add 3prot
clear @a[tag=blue,tag=!1prot,tag=2prot,tag=3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:golden_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=8..}] diamond 8
execute as @a[tag=blue,tag=!1prot,tag=2prot,tag=3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:golden_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=..8}] at @s run tellraw @s ["",{"text":"You don't have enough ","color":"red"},{"text":"DIAMONDS"}]
clear @a[tag=blue,nbt={Inventory:[{id:"minecraft:golden_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] golden_chestplate{Enchantments:[{id:"minecraft:protection",lvl:1}]}
tag @a[tag=blue,tag=3prot] remove 2prot

tag @a[tag=blue,tag=!1prot,tag=!2prot,tag=3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:diamond_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=16..}] add prot4
execute as @a[tag=blue,tag=!1prot,tag=!2prot,tag=3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:diamond_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=16..}] at @a[tag=blue] run tellraw @s ["",{"text":"You just purchased ","color":"green"},{"text":"PROTECTION 4"}]
tag @a[tag=blue,tag=!1prot,tag=!2prot,tag=3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:diamond_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=16..}] add 4prot
clear @a[tag=blue,tag=!1prot,tag=!2prot,tag=3prot,tag=4prot,nbt={Inventory:[{id:"minecraft:diamond_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=16..}] diamond 16
execute as @a[tag=blue,tag=!1prot,tag=!2prot,tag=3prot,tag=4prot,nbt={Inventory:[{id:"minecraft:diamond_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=..16}] at @s run tellraw @s ["",{"text":"You don't have enough ","color":"red"},{"text":"DIAMONDS"}]
clear @a[tag=blue,nbt={Inventory:[{id:"minecraft:diamond_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] diamond_chestplate{Enchantments:[{id:"minecraft:protection",lvl:1}]}
tag @a[tag=blue,tag=4prot] remove 3prot

###

tag @a[tag=green,tag=!1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=2..}] add prot1
execute as @a[tag=green,tag=!1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=2..}] at @s run tellraw @a[tag=green] ["",{"text":"You just purchased ","color":"green"},{"text":"PROTECTION 1"}]
tag @a[tag=green,tag=!1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=2..}] add 1prot
clear @a[tag=green,tag=1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=2..}] diamond 2
execute as @a[tag=green,tag=!1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=..2}] at @s run tellraw @s ["",{"text":"You don't have enough ","color":"red"},{"text":"DIAMONDS"}]
clear @a[tag=green,nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] chainmail_chestplate{Enchantments:[{id:"minecraft:protection",lvl:1}]}



tag @a[tag=green,tag=1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:iron_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=4..}] add prot2
execute as @a[tag=green,tag=1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:iron_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=4..}] at @s run tellraw @a[tag=green] ["",{"text":"You just purchased ","color":"green"},{"text":"PROTECTION 2"}]
tag @a[tag=green,tag=1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:iron_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=4..}] add 2prot
clear @a[tag=green,tag=1prot,tag=2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:iron_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=4..}] diamond 4
execute as @a[tag=green,tag=1prot,tag=2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:iron_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=..4}] at @s run tellraw @s ["",{"text":"You don't have enough ","color":"red"},{"text":"DIAMONDS"}]
clear @a[tag=green,nbt={Inventory:[{id:"minecraft:iron_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] iron_chestplate{Enchantments:[{id:"minecraft:protection",lvl:1}]}
tag @a[tag=green,tag=2prot] remove 1prot

tag @a[tag=green,tag=!1prot,tag=2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:golden_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=8..}] add prot3
execute as @a[tag=green,tag=!1prot,tag=2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:golden_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=8..}] at @s run tellraw @a[tag=green] ["",{"text":"You just purchased ","color":"green"},{"text":"PROTECTION 3"}]
tag @a[tag=green,tag=!1prot,tag=2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:golden_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=8..}] add 3prot
clear @a[tag=green,tag=!1prot,tag=2prot,tag=3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:golden_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=8..}] diamond 8
execute as @a[tag=green,tag=!1prot,tag=2prot,tag=3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:golden_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=..8}] at @s run tellraw @s ["",{"text":"You don't have enough ","color":"red"},{"text":"DIAMONDS"}]
clear @a[tag=green,nbt={Inventory:[{id:"minecraft:golden_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] golden_chestplate{Enchantments:[{id:"minecraft:protection",lvl:1}]}
tag @a[tag=green,tag=3prot] remove 2prot

tag @a[tag=green,tag=!1prot,tag=!2prot,tag=3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:diamond_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=16..}] add prot4
execute as @a[tag=green,tag=!1prot,tag=!2prot,tag=3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:diamond_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=16..}] at @a[tag=green] run tellraw @s ["",{"text":"You just purchased ","color":"green"},{"text":"PROTECTION 4"}]
tag @a[tag=green,tag=!1prot,tag=!2prot,tag=3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:diamond_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=16..}] add 4prot
clear @a[tag=green,tag=!1prot,tag=!2prot,tag=3prot,tag=4prot,nbt={Inventory:[{id:"minecraft:diamond_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=16..}] diamond 16
execute as @a[tag=green,tag=!1prot,tag=!2prot,tag=3prot,tag=4prot,nbt={Inventory:[{id:"minecraft:diamond_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=..16}] at @s run tellraw @s ["",{"text":"You don't have enough ","color":"red"},{"text":"DIAMONDS"}]
clear @a[tag=green,nbt={Inventory:[{id:"minecraft:diamond_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] diamond_chestplate{Enchantments:[{id:"minecraft:protection",lvl:1}]}
tag @a[tag=green,tag=4prot] remove 3prot

###

tag @a[tag=yellow,tag=!1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=2..}] add prot1
execute as @a[tag=yellow,tag=!1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=2..}] at @s run tellraw @a[tag=yellow] ["",{"text":"You just purchased ","color":"green"},{"text":"PROTECTION 1"}]
tag @a[tag=yellow,tag=!1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=2..}] add 1prot
clear @a[tag=yellow,tag=1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=2..}] diamond 2
execute as @a[tag=yellow,tag=!1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=..2}] at @s run tellraw @s ["",{"text":"You don't have enough ","color":"red"},{"text":"DIAMONDS"}]
clear @a[tag=yellow,nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] chainmail_chestplate{Enchantments:[{id:"minecraft:protection",lvl:1}]}



tag @a[tag=yellow,tag=1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:iron_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=4..}] add prot2
execute as @a[tag=yellow,tag=1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:iron_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=4..}] at @s run tellraw @a[tag=yellow] ["",{"text":"You just purchased ","color":"green"},{"text":"PROTECTION 2"}]
tag @a[tag=yellow,tag=1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:iron_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=4..}] add 2prot
clear @a[tag=yellow,tag=1prot,tag=2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:iron_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=4..}] diamond 4
execute as @a[tag=yellow,tag=1prot,tag=2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:iron_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=..4}] at @s run tellraw @s ["",{"text":"You don't have enough ","color":"red"},{"text":"DIAMONDS"}]
clear @a[tag=yellow,nbt={Inventory:[{id:"minecraft:iron_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] iron_chestplate{Enchantments:[{id:"minecraft:protection",lvl:1}]}
tag @a[tag=yellow,tag=2prot] remove 1prot

tag @a[tag=yellow,tag=!1prot,tag=2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:golden_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=8..}] add prot3
execute as @a[tag=yellow,tag=!1prot,tag=2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:golden_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=8..}] at @s run tellraw @a[tag=yellow] ["",{"text":"You just purchased ","color":"green"},{"text":"PROTECTION 3"}]
tag @a[tag=yellow,tag=!1prot,tag=2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:golden_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=8..}] add 3prot
clear @a[tag=yellow,tag=!1prot,tag=2prot,tag=3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:golden_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=8..}] diamond 8
execute as @a[tag=yellow,tag=!1prot,tag=2prot,tag=3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:golden_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=..8}] at @s run tellraw @s ["",{"text":"You don't have enough ","color":"red"},{"text":"DIAMONDS"}]
clear @a[tag=yellow,nbt={Inventory:[{id:"minecraft:golden_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] golden_chestplate{Enchantments:[{id:"minecraft:protection",lvl:1}]}
tag @a[tag=yellow,tag=3prot] remove 2prot

tag @a[tag=yellow,tag=!1prot,tag=!2prot,tag=3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:diamond_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=16..}] add prot4
execute as @a[tag=yellow,tag=!1prot,tag=!2prot,tag=3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:diamond_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=16..}] at @a[tag=yellow] run tellraw @s ["",{"text":"You just purchased ","color":"green"},{"text":"PROTECTION 4"}]
tag @a[tag=yellow,tag=!1prot,tag=!2prot,tag=3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:diamond_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=16..}] add 4prot
clear @a[tag=yellow,tag=!1prot,tag=!2prot,tag=3prot,tag=4prot,nbt={Inventory:[{id:"minecraft:diamond_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=16..}] diamond 16
execute as @a[tag=yellow,tag=!1prot,tag=!2prot,tag=3prot,tag=4prot,nbt={Inventory:[{id:"minecraft:diamond_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=..16}] at @s run tellraw @s ["",{"text":"You don't have enough ","color":"red"},{"text":"DIAMONDS"}]
clear @a[tag=yellow,nbt={Inventory:[{id:"minecraft:diamond_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] diamond_chestplate{Enchantments:[{id:"minecraft:protection",lvl:1}]}
tag @a[tag=yellow,tag=4prot] remove 3prot

###

tag @a[tag=gray,tag=!1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=2..}] add prot1
execute as @a[tag=gray,tag=!1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=2..}] at @s run tellraw @a[tag=gray] ["",{"text":"You just purchased ","color":"green"},{"text":"PROTECTION 1"}]
tag @a[tag=gray,tag=!1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=2..}] add 1prot
clear @a[tag=gray,tag=1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=2..}] diamond 2
execute as @a[tag=gray,tag=!1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=..2}] at @s run tellraw @s ["",{"text":"You don't have enough ","color":"red"},{"text":"DIAMONDS"}]
clear @a[tag=gray,nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] chainmail_chestplate{Enchantments:[{id:"minecraft:protection",lvl:1}]}



tag @a[tag=gray,tag=1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:iron_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=4..}] add prot2
execute as @a[tag=gray,tag=1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:iron_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=4..}] at @s run tellraw @a[tag=gray] ["",{"text":"You just purchased ","color":"green"},{"text":"PROTECTION 2"}]
tag @a[tag=gray,tag=1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:iron_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=4..}] add 2prot
clear @a[tag=gray,tag=1prot,tag=2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:iron_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=4..}] diamond 4
execute as @a[tag=gray,tag=1prot,tag=2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:iron_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=..4}] at @s run tellraw @s ["",{"text":"You don't have enough ","color":"red"},{"text":"DIAMONDS"}]
clear @a[tag=gray,nbt={Inventory:[{id:"minecraft:iron_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] iron_chestplate{Enchantments:[{id:"minecraft:protection",lvl:1}]}
tag @a[tag=gray,tag=2prot] remove 1prot

tag @a[tag=gray,tag=!1prot,tag=2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:golden_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=8..}] add prot3
execute as @a[tag=gray,tag=!1prot,tag=2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:golden_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=8..}] at @s run tellraw @a[tag=gray] ["",{"text":"You just purchased ","color":"green"},{"text":"PROTECTION 3"}]
tag @a[tag=gray,tag=!1prot,tag=2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:golden_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=8..}] add 3prot
clear @a[tag=gray,tag=!1prot,tag=2prot,tag=3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:golden_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=8..}] diamond 8
execute as @a[tag=gray,tag=!1prot,tag=2prot,tag=3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:golden_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=..8}] at @s run tellraw @s ["",{"text":"You don't have enough ","color":"red"},{"text":"DIAMONDS"}]
clear @a[tag=gray,nbt={Inventory:[{id:"minecraft:golden_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] golden_chestplate{Enchantments:[{id:"minecraft:protection",lvl:1}]}
tag @a[tag=gray,tag=3prot] remove 2prot

tag @a[tag=gray,tag=!1prot,tag=!2prot,tag=3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:diamond_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=16..}] add prot4
execute as @a[tag=gray,tag=!1prot,tag=!2prot,tag=3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:diamond_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=16..}] at @a[tag=gray] run tellraw @s ["",{"text":"You just purchased ","color":"green"},{"text":"PROTECTION 4"}]
tag @a[tag=gray,tag=!1prot,tag=!2prot,tag=3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:diamond_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=16..}] add 4prot
clear @a[tag=gray,tag=!1prot,tag=!2prot,tag=3prot,tag=4prot,nbt={Inventory:[{id:"minecraft:diamond_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=16..}] diamond 16
execute as @a[tag=gray,tag=!1prot,tag=!2prot,tag=3prot,tag=4prot,nbt={Inventory:[{id:"minecraft:diamond_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=..16}] at @s run tellraw @s ["",{"text":"You don't have enough ","color":"red"},{"text":"DIAMONDS"}]
clear @a[tag=gray,nbt={Inventory:[{id:"minecraft:diamond_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] diamond_chestplate{Enchantments:[{id:"minecraft:protection",lvl:1}]}
tag @a[tag=gray,tag=4prot] remove 3prot

###

tag @a[tag=white,tag=!1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=2..}] add prot1
execute as @a[tag=white,tag=!1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=2..}] at @s run tellraw @a[tag=white] ["",{"text":"You just purchased ","color":"green"},{"text":"PROTECTION 1"}]
tag @a[tag=white,tag=!1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=2..}] add 1prot
clear @a[tag=white,tag=1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=2..}] diamond 2
execute as @a[tag=white,tag=!1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=..2}] at @s run tellraw @s ["",{"text":"You don't have enough ","color":"red"},{"text":"DIAMONDS"}]
clear @a[tag=white,nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] chainmail_chestplate{Enchantments:[{id:"minecraft:protection",lvl:1}]}



tag @a[tag=white,tag=1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:iron_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=4..}] add prot2
execute as @a[tag=white,tag=1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:iron_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=4..}] at @s run tellraw @a[tag=white] ["",{"text":"You just purchased ","color":"green"},{"text":"PROTECTION 2"}]
tag @a[tag=white,tag=1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:iron_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=4..}] add 2prot
clear @a[tag=white,tag=1prot,tag=2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:iron_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=4..}] diamond 4
execute as @a[tag=white,tag=1prot,tag=2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:iron_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=..4}] at @s run tellraw @s ["",{"text":"You don't have enough ","color":"red"},{"text":"DIAMONDS"}]
clear @a[tag=white,nbt={Inventory:[{id:"minecraft:iron_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] iron_chestplate{Enchantments:[{id:"minecraft:protection",lvl:1}]}
tag @a[tag=white,tag=2prot] remove 1prot

tag @a[tag=white,tag=!1prot,tag=2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:golden_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=8..}] add prot3
execute as @a[tag=white,tag=!1prot,tag=2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:golden_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=8..}] at @s run tellraw @a[tag=white] ["",{"text":"You just purchased ","color":"green"},{"text":"PROTECTION 3"}]
tag @a[tag=white,tag=!1prot,tag=2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:golden_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=8..}] add 3prot
clear @a[tag=white,tag=!1prot,tag=2prot,tag=3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:golden_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=8..}] diamond 8
execute as @a[tag=white,tag=!1prot,tag=2prot,tag=3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:golden_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=..8}] at @s run tellraw @s ["",{"text":"You don't have enough ","color":"red"},{"text":"DIAMONDS"}]
clear @a[tag=white,nbt={Inventory:[{id:"minecraft:golden_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] golden_chestplate{Enchantments:[{id:"minecraft:protection",lvl:1}]}
tag @a[tag=white,tag=3prot] remove 2prot

tag @a[tag=white,tag=!1prot,tag=!2prot,tag=3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:diamond_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=16..}] add prot4
execute as @a[tag=white,tag=!1prot,tag=!2prot,tag=3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:diamond_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=16..}] at @a[tag=white] run tellraw @s ["",{"text":"You just purchased ","color":"green"},{"text":"PROTECTION 4"}]
tag @a[tag=white,tag=!1prot,tag=!2prot,tag=3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:diamond_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=16..}] add 4prot
clear @a[tag=white,tag=!1prot,tag=!2prot,tag=3prot,tag=4prot,nbt={Inventory:[{id:"minecraft:diamond_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=16..}] diamond 16
execute as @a[tag=white,tag=!1prot,tag=!2prot,tag=3prot,tag=4prot,nbt={Inventory:[{id:"minecraft:diamond_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=..16}] at @s run tellraw @s ["",{"text":"You don't have enough ","color":"red"},{"text":"DIAMONDS"}]
clear @a[tag=white,nbt={Inventory:[{id:"minecraft:diamond_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] diamond_chestplate{Enchantments:[{id:"minecraft:protection",lvl:1}]}
tag @a[tag=white,tag=4prot] remove 3prot

###

tag @a[tag=aqua,tag=!1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=2..}] add prot1
execute as @a[tag=aqua,tag=!1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=2..}] at @s run tellraw @a[tag=aqua] ["",{"text":"You just purchased ","color":"green"},{"text":"PROTECTION 1"}]
tag @a[tag=aqua,tag=!1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=2..}] add 1prot
clear @a[tag=aqua,tag=1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=2..}] diamond 2
execute as @a[tag=aqua,tag=!1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=..2}] at @s run tellraw @s ["",{"text":"You don't have enough ","color":"red"},{"text":"DIAMONDS"}]
clear @a[tag=aqua,nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] chainmail_chestplate{Enchantments:[{id:"minecraft:protection",lvl:1}]}



tag @a[tag=aqua,tag=1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:iron_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=4..}] add prot2
execute as @a[tag=aqua,tag=1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:iron_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=4..}] at @s run tellraw @a[tag=aqua] ["",{"text":"You just purchased ","color":"green"},{"text":"PROTECTION 2"}]
tag @a[tag=aqua,tag=1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:iron_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=4..}] add 2prot
clear @a[tag=aqua,tag=1prot,tag=2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:iron_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=4..}] diamond 4
execute as @a[tag=aqua,tag=1prot,tag=2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:iron_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=..4}] at @s run tellraw @s ["",{"text":"You don't have enough ","color":"red"},{"text":"DIAMONDS"}]
clear @a[tag=aqua,nbt={Inventory:[{id:"minecraft:iron_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] iron_chestplate{Enchantments:[{id:"minecraft:protection",lvl:1}]}
tag @a[tag=aqua,tag=2prot] remove 1prot

tag @a[tag=aqua,tag=!1prot,tag=2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:golden_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=8..}] add prot3
execute as @a[tag=aqua,tag=!1prot,tag=2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:golden_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=8..}] at @s run tellraw @a[tag=aqua] ["",{"text":"You just purchased ","color":"green"},{"text":"PROTECTION 3"}]
tag @a[tag=aqua,tag=!1prot,tag=2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:golden_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=8..}] add 3prot
clear @a[tag=aqua,tag=!1prot,tag=2prot,tag=3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:golden_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=8..}] diamond 8
execute as @a[tag=aqua,tag=!1prot,tag=2prot,tag=3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:golden_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=..8}] at @s run tellraw @s ["",{"text":"You don't have enough ","color":"red"},{"text":"DIAMONDS"}]
clear @a[tag=aqua,nbt={Inventory:[{id:"minecraft:golden_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] golden_chestplate{Enchantments:[{id:"minecraft:protection",lvl:1}]}
tag @a[tag=aqua,tag=3prot] remove 2prot

tag @a[tag=aqua,tag=!1prot,tag=!2prot,tag=3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:diamond_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=16..}] add prot4
execute as @a[tag=aqua,tag=!1prot,tag=!2prot,tag=3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:diamond_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=16..}] at @a[tag=aqua] run tellraw @s ["",{"text":"You just purchased ","color":"green"},{"text":"PROTECTION 4"}]
tag @a[tag=aqua,tag=!1prot,tag=!2prot,tag=3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:diamond_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=16..}] add 4prot
clear @a[tag=aqua,tag=!1prot,tag=!2prot,tag=3prot,tag=4prot,nbt={Inventory:[{id:"minecraft:diamond_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=16..}] diamond 16
execute as @a[tag=aqua,tag=!1prot,tag=!2prot,tag=3prot,tag=4prot,nbt={Inventory:[{id:"minecraft:diamond_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=..16}] at @s run tellraw @s ["",{"text":"You don't have enough ","color":"red"},{"text":"DIAMONDS"}]
clear @a[tag=aqua,nbt={Inventory:[{id:"minecraft:diamond_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] diamond_chestplate{Enchantments:[{id:"minecraft:protection",lvl:1}]}
tag @a[tag=aqua,tag=4prot] remove 3prot

###

tag @a[tag=pink,tag=!1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=2..}] add prot1
execute as @a[tag=pink,tag=!1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=2..}] at @s run tellraw @a[tag=pink] ["",{"text":"You just purchased ","color":"green"},{"text":"PROTECTION 1"}]
tag @a[tag=pink,tag=!1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=2..}] add 1prot
clear @a[tag=pink,tag=1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=2..}] diamond 2
execute as @a[tag=pink,tag=!1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=..2}] at @s run tellraw @s ["",{"text":"You don't have enough ","color":"red"},{"text":"DIAMONDS"}]
clear @a[tag=pink,nbt={Inventory:[{id:"minecraft:chainmail_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] chainmail_chestplate{Enchantments:[{id:"minecraft:protection",lvl:1}]}



tag @a[tag=pink,tag=1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:iron_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=4..}] add prot2
execute as @a[tag=pink,tag=1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:iron_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=4..}] at @s run tellraw @a[tag=pink] ["",{"text":"You just purchased ","color":"green"},{"text":"PROTECTION 2"}]
tag @a[tag=pink,tag=1prot,tag=!2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:iron_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=4..}] add 2prot
clear @a[tag=pink,tag=1prot,tag=2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:iron_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=4..}] diamond 4
execute as @a[tag=pink,tag=1prot,tag=2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:iron_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=..4}] at @s run tellraw @s ["",{"text":"You don't have enough ","color":"red"},{"text":"DIAMONDS"}]
clear @a[tag=pink,nbt={Inventory:[{id:"minecraft:iron_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] iron_chestplate{Enchantments:[{id:"minecraft:protection",lvl:1}]}
tag @a[tag=pink,tag=2prot] remove 1prot

tag @a[tag=pink,tag=!1prot,tag=2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:golden_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=8..}] add prot3
execute as @a[tag=pink,tag=!1prot,tag=2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:golden_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=8..}] at @s run tellraw @a[tag=pink] ["",{"text":"You just purchased ","color":"green"},{"text":"PROTECTION 3"}]
tag @a[tag=pink,tag=!1prot,tag=2prot,tag=!3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:golden_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=8..}] add 3prot
clear @a[tag=pink,tag=!1prot,tag=2prot,tag=3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:golden_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=8..}] diamond 8
execute as @a[tag=pink,tag=!1prot,tag=2prot,tag=3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:golden_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=..8}] at @s run tellraw @s ["",{"text":"You don't have enough ","color":"red"},{"text":"DIAMONDS"}]
clear @a[tag=pink,nbt={Inventory:[{id:"minecraft:golden_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] golden_chestplate{Enchantments:[{id:"minecraft:protection",lvl:1}]}
tag @a[tag=pink,tag=3prot] remove 2prot

tag @a[tag=pink,tag=!1prot,tag=!2prot,tag=3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:diamond_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=16..}] add prot4
execute as @a[tag=pink,tag=!1prot,tag=!2prot,tag=3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:diamond_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=16..}] at @a[tag=pink] run tellraw @s ["",{"text":"You just purchased ","color":"green"},{"text":"PROTECTION 4"}]
tag @a[tag=pink,tag=!1prot,tag=!2prot,tag=3prot,tag=4prot,nbt={Inventory:[{id:"minecraft:diamond_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=16..}] add 4prot
clear @a[tag=pink,tag=!1prot,tag=!2prot,tag=3prot,tag=4prot,nbt={Inventory:[{id:"minecraft:diamond_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=16..}] diamond 16
execute as @a[tag=pink,tag=!1prot,tag=!2prot,tag=3prot,tag=!4prot,nbt={Inventory:[{id:"minecraft:diamond_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=..16}] at @s run tellraw @s ["",{"text":"You don't have enough ","color":"red"},{"text":"DIAMONDS"}]
clear @a[tag=pink,nbt={Inventory:[{id:"minecraft:diamond_chestplate",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] diamond_chestplate{Enchantments:[{id:"minecraft:protection",lvl:1}]}
tag @a[tag=pink,tag=4prot] remove 3prot

###
tag @a[tag=prot2] remove prot1
tag @a[tag=prot3] remove prot2
tag @a[tag=prot4] remove prot3

###

###Diamond Trap Upgrade

execute as @a[nbt={Inventory:[{id:"minecraft:tripwire_hook",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=..1}] at @s run tellraw @s ["",{"text":"You don't have enough ","color":"red"},{"text":"DIMONDS"}]
give @a[nbt={Inventory:[{id:"minecraft:tripwire_hook",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=1..}] minecraft:tripwire_hook 1
execute as @a[nbt={Inventory:[{id:"minecraft:tripwire_hook",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=1..}] at @s run tellraw @s ["",{"text":"You just purchased ","color":"green"},{"text":"IT'S A TRAP"}]
execute as @a[nbt={Inventory:[{id:"minecraft:tripwire_hook",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=1..}] at @s run tag @s add trap
clear @a[nbt={Inventory:[{id:"minecraft:tripwire_hook",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=1..}] diamond 1
clear @a[nbt={Inventory:[{id:"minecraft:tripwire_hook",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] tripwire_hook{Enchantments:[{id:"minecraft:protection",lvl:1}]}


###Sharpness

execute as @a[nbt={Inventory:[{id:"minecraft:golden_sword",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=..4}] at @s run tellraw @s ["",{"text":"You don't have enough ","color":"red"},{"text":"DIAMONDS"}]
give @a[tag=!sharp,nbt={Inventory:[{id:"minecraft:golden_sword",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=4..}] minecraft:golden_sword 1
execute as @a[nbt={Inventory:[{id:"minecraft:golden_sword",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=4..}] at @s run tellraw @s ["",{"text":"You just purchased ","color":"green"},{"text":"SHARPNESS"}]
clear @a[nbt={Inventory:[{id:"minecraft:golden_sword",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]},scores={diaCount=4..}] diamond 4
clear @a[nbt={Inventory:[{id:"minecraft:golden_sword",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] golden_sword{Enchantments:[{id:"minecraft:protection",lvl:1}]}

execute as @a[tag=red,nbt={Inventory:[{id:"minecraft:golden_sword"}]}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:golden_sword",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] run tag @a[tag=red] add sharp
execute as @a[tag=blue,nbt={Inventory:[{id:"minecraft:golden_sword"}]}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:golden_sword",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] run tag @a[tag=blue] add sharp
execute as @a[tag=green,nbt={Inventory:[{id:"minecraft:golden_sword"}]}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:golden_sword",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] run tag @a[tag=green] add sharp
execute as @a[tag=yellow,nbt={Inventory:[{id:"minecraft:golden_sword"}]}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:golden_sword",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] run tag @a[tag=yellow] add sharp
execute as @a[tag=gray,nbt={Inventory:[{id:"minecraft:golden_sword"}]}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:golden_sword",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] run tag @a[tag=gray] add sharp
execute as @a[tag=white,nbt={Inventory:[{id:"minecraft:golden_sword"}]}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:golden_sword",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] run tag @a[tag=white] add sharp
execute as @a[tag=aqua,nbt={Inventory:[{id:"minecraft:golden_sword"}]}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:golden_sword",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] run tag @a[tag=aqua] add sharp
execute as @a[tag=pink,nbt={Inventory:[{id:"minecraft:golden_sword"}]}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:golden_sword",tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}]}] run tag @a[tag=pink] add sharp

execute as @a[tag=prot1,nbt={Inventory:[{Slot:100b,id:"minecraft:chainmail_boots"}]}] at @s run replaceitem entity @s armor.feet minecraft:chainmail_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1}]} 1
execute as @a[tag=prot1,nbt={Inventory:[{Slot:101b,id:"minecraft:chainmail_leggings"}]}] at @s run replaceitem entity @s armor.legs minecraft:chainmail_leggings{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1}]} 1
execute as @a[tag=prot1,nbt={Inventory:[{Slot:100b,id:"minecraft:iron_boots"}]}] at @s run replaceitem entity @s armor.feet minecraft:iron_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1}]} 1
execute as @a[tag=prot1,nbt={Inventory:[{Slot:101b,id:"minecraft:iron_leggings"}]}] at @s run replaceitem entity @s armor.legs minecraft:iron_leggings{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1}]} 1
execute as @a[tag=prot1,nbt={Inventory:[{Slot:100b,id:"minecraft:diamond_boots"}]}] at @s run replaceitem entity @s armor.feet minecraft:diamond_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1}]} 1
execute as @a[tag=prot1,nbt={Inventory:[{Slot:101b,id:"minecraft:diamond_leggings"}]}] at @s run replaceitem entity @s armor.legs minecraft:diamond_leggings{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1}]} 1
execute as @a[tag=prot1,tag=red,nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots"}]}] at @s run replaceitem entity @s armor.feet minecraft:leather_boots{display:{color:16711680},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1}]} 1
execute as @a[tag=prot1,tag=red,nbt={Inventory:[{Slot:101b,id:"minecraft:leather_leggings"}]}] at @s run replaceitem entity @s armor.legs minecraft:leather_leggings{display:{color:16711680},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1}]} 1
execute as @a[tag=prot1,tag=red,nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] at @s run replaceitem entity @s armor.head minecraft:leather_boots{display:{color:16711680},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:500},{id:"minecraft:protection",lvl:1},{id:"minecraft:binding_curse",lvl:1}]} 1
execute as @a[tag=prot1,tag=red,nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate"}]}] at @s run replaceitem entity @s armor.chest minecraft:leather_chestplate{display:{color:16711680},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:protection",lvl:1},{id:"minecraft:binding_curse",lvl:1}]} 1
execute as @a[tag=prot1,tag=blue,nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots"}]}] at @s run replaceitem entity @s armor.feet minecraft:leather_boots{display:{color:6911},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1}]} 1
execute as @a[tag=prot1,tag=blue,nbt={Inventory:[{Slot:101b,id:"minecraft:leather_leggings"}]}] at @s run replaceitem entity @s armor.legs minecraft:leather_leggings{display:{color:6911},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1}]} 1
execute as @a[tag=prot1,tag=blue,nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] at @s run replaceitem entity @s armor.head minecraft:leather_boots{display:{color:6911},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:500},{id:"minecraft:protection",lvl:1},{id:"minecraft:binding_curse",lvl:1}]} 1
execute as @a[tag=prot1,tag=blue,nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate"}]}] at @s run replaceitem entity @s armor.chest minecraft:leather_chestplate{display:{color:6911},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:protection",lvl:1},{id:"minecraft:binding_curse",lvl:1}]} 1
execute as @a[tag=prot1,tag=green,nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots"}]}] at @s run replaceitem entity @s armor.feet minecraft:leather_boots{display:{color:65331},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1}]} 1
execute as @a[tag=prot1,tag=green,nbt={Inventory:[{Slot:101b,id:"minecraft:leather_leggings"}]}] at @s run replaceitem entity @s armor.legs minecraft:leather_leggings{display:{color:65331},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1}]} 1
execute as @a[tag=prot1,tag=green,nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] at @s run replaceitem entity @s armor.head minecraft:leather_boots{display:{color:65331},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:500},{id:"minecraft:protection",lvl:1},{id:"minecraft:binding_curse",lvl:1}]} 1
execute as @a[tag=prot1,tag=green,nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate"}]}] at @s run replaceitem entity @s armor.chest minecraft:leather_chestplate{display:{color:65331},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:protection",lvl:1},{id:"minecraft:binding_curse",lvl:1}]} 1
execute as @a[tag=prot1,tag=yellow,nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots"}]}] at @s run replaceitem entity @s armor.feet minecraft:leather_boots{display:{color:16774920},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1}]} 1
execute as @a[tag=prot1,tag=yellow,nbt={Inventory:[{Slot:101b,id:"minecraft:leather_leggings"}]}] at @s run replaceitem entity @s armor.legs minecraft:leather_leggings{display:{color:16774920},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1}]} 1
execute as @a[tag=prot1,tag=yellow,nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] at @s run replaceitem entity @s armor.head minecraft:leather_boots{display:{color:16774920},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:500},{id:"minecraft:protection",lvl:1},{id:"minecraft:binding_curse",lvl:1}]} 1
execute as @a[tag=prot1,tag=yellow,nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate"}]}] at @s run replaceitem entity @s armor.chest minecraft:leather_chestplate{display:{color:16774920},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:protection",lvl:1},{id:"minecraft:binding_curse",lvl:1}]} 1
execute as @a[tag=prot1,tag=gray,nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots"}]}] at @s run replaceitem entity @s armor.feet minecraft:leather_boots{display:{color:8882055},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1}]} 1
execute as @a[tag=prot1,tag=gray,nbt={Inventory:[{Slot:101b,id:"minecraft:leather_leggings"}]}] at @s run replaceitem entity @s armor.legs minecraft:leather_leggings{display:{color:8882055},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1}]} 1
execute as @a[tag=prot1,tag=gray,nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] at @s run replaceitem entity @s armor.head minecraft:leather_boots{display:{color:8882055},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:500},{id:"minecraft:protection",lvl:1},{id:"minecraft:binding_curse",lvl:1}]} 1
execute as @a[tag=prot1,tag=gray,nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate"}]}] at @s run replaceitem entity @s armor.chest minecraft:leather_chestplate{display:{color:8882055},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:protection",lvl:1},{id:"minecraft:binding_curse",lvl:1}]} 1
execute as @a[tag=prot1,tag=white,nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots"}]}] at @s run replaceitem entity @s armor.feet minecraft:leather_boots{display:{color:16777215},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1}]} 1
execute as @a[tag=prot1,tag=white,nbt={Inventory:[{Slot:101b,id:"minecraft:leather_leggings"}]}] at @s run replaceitem entity @s armor.legs minecraft:leather_leggings{display:{color:16777215},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1}]} 1
execute as @a[tag=prot1,tag=white,nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] at @s run replaceitem entity @s armor.head minecraft:leather_boots{display:{color:16777215},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:500},{id:"minecraft:protection",lvl:1},{id:"minecraft:binding_curse",lvl:1}]} 1
execute as @a[tag=prot1,tag=white,nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate"}]}] at @s run replaceitem entity @s armor.chest minecraft:leather_chestplate{display:{color:16777215},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:protection",lvl:1},{id:"minecraft:binding_curse",lvl:1}]} 1
execute as @a[tag=prot1,tag=aqua,nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots"}]}] at @s run replaceitem entity @s armor.feet minecraft:leather_boots{display:{color:5898239},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1}]} 1
execute as @a[tag=prot1,tag=aqua,nbt={Inventory:[{Slot:101b,id:"minecraft:leather_leggings"}]}] at @s run replaceitem entity @s armor.legs minecraft:leather_leggings{display:{color:5898239},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1}]} 1
execute as @a[tag=prot1,tag=aqua,nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] at @s run replaceitem entity @s armor.head minecraft:leather_boots{display:{color:5898239},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:500},{id:"minecraft:protection",lvl:1},{id:"minecraft:binding_curse",lvl:1}]} 1
execute as @a[tag=prot1,tag=aqua,nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate"}]}] at @s run replaceitem entity @s armor.chest minecraft:leather_chestplate{display:{color:5898239},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:protection",lvl:1},{id:"minecraft:binding_curse",lvl:1}]} 1
execute as @a[tag=prot1,tag=pink,nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots"}]}] at @s run replaceitem entity @s armor.feet minecraft:leather_boots{display:{color:16756218},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1}]} 1
execute as @a[tag=prot1,tag=pink,nbt={Inventory:[{Slot:101b,id:"minecraft:leather_leggings"}]}] at @s run replaceitem entity @s armor.legs minecraft:leather_leggings{display:{color:16756218},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1}]} 1
execute as @a[tag=prot1,tag=pink,nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] at @s run replaceitem entity @s armor.head minecraft:leather_boots{display:{color:16756218},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:500},{id:"minecraft:protection",lvl:1},{id:"minecraft:binding_curse",lvl:1}]} 1
execute as @a[tag=prot1,tag=pink,nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate"}]}] at @s run replaceitem entity @s armor.chest minecraft:leather_chestplate{display:{color:16756218},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:protection",lvl:1},{id:"minecraft:binding_curse",lvl:1}]} 1
execute as @a[tag=prot2,nbt={Inventory:[{Slot:100b,id:"minecraft:chainmail_boots"}]}] at @s run replaceitem entity @s armor.feet minecraft:chainmail_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:2}]} 1
execute as @a[tag=prot2,nbt={Inventory:[{Slot:101b,id:"minecraft:chainmail_leggings"}]}] at @s run replaceitem entity @s armor.legs minecraft:chainmail_leggings{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:2}]} 1
execute as @a[tag=prot2,nbt={Inventory:[{Slot:100b,id:"minecraft:iron_boots"}]}] at @s run replaceitem entity @s armor.feet minecraft:iron_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:2}]} 1
execute as @a[tag=prot2,nbt={Inventory:[{Slot:101b,id:"minecraft:iron_leggings"}]}] at @s run replaceitem entity @s armor.legs minecraft:iron_leggings{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:2}]} 1
execute as @a[tag=prot2,nbt={Inventory:[{Slot:100b,id:"minecraft:diamond_boots"}]}] at @s run replaceitem entity @s armor.feet minecraft:diamond_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:2}]} 1
execute as @a[tag=prot2,nbt={Inventory:[{Slot:101b,id:"minecraft:diamond_leggings"}]}] at @s run replaceitem entity @s armor.legs minecraft:diamond_leggings{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:2}]} 1
execute as @a[tag=prot2,tag=red,nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots"}]}] at @s run replaceitem entity @s armor.feet minecraft:leather_boots{display:{color:16711680},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:2}]} 1
execute as @a[tag=prot2,tag=red,nbt={Inventory:[{Slot:101b,id:"minecraft:leather_leggings"}]}] at @s run replaceitem entity @s armor.legs minecraft:leather_leggings{display:{color:16711680},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:2}]} 1
execute as @a[tag=prot2,tag=red,nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] at @s run replaceitem entity @s armor.head minecraft:leather_boots{display:{color:16711680},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:500},{id:"minecraft:protection",lvl:2},{id:"minecraft:binding_curse",lvl:2}]} 1
execute as @a[tag=prot2,tag=red,nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate"}]}] at @s run replaceitem entity @s armor.chest minecraft:leather_chestplate{display:{color:16711680},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:protection",lvl:2},{id:"minecraft:binding_curse",lvl:2}]} 1
execute as @a[tag=prot2,tag=blue,nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots"}]}] at @s run replaceitem entity @s armor.feet minecraft:leather_boots{display:{color:6911},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:2}]} 1
execute as @a[tag=prot2,tag=blue,nbt={Inventory:[{Slot:101b,id:"minecraft:leather_leggings"}]}] at @s run replaceitem entity @s armor.legs minecraft:leather_leggings{display:{color:6911},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:2}]} 1
execute as @a[tag=prot2,tag=blue,nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] at @s run replaceitem entity @s armor.head minecraft:leather_boots{display:{color:6911},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:500},{id:"minecraft:protection",lvl:2},{id:"minecraft:binding_curse",lvl:2}]} 1
execute as @a[tag=prot2,tag=blue,nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate"}]}] at @s run replaceitem entity @s armor.chest minecraft:leather_chestplate{display:{color:6911},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:protection",lvl:2},{id:"minecraft:binding_curse",lvl:2}]} 1
execute as @a[tag=prot2,tag=green,nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots"}]}] at @s run replaceitem entity @s armor.feet minecraft:leather_boots{display:{color:65331},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:2}]} 1
execute as @a[tag=prot2,tag=green,nbt={Inventory:[{Slot:101b,id:"minecraft:leather_leggings"}]}] at @s run replaceitem entity @s armor.legs minecraft:leather_leggings{display:{color:65331},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:2}]} 1
execute as @a[tag=prot2,tag=green,nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] at @s run replaceitem entity @s armor.head minecraft:leather_boots{display:{color:65331},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:500},{id:"minecraft:protection",lvl:2},{id:"minecraft:binding_curse",lvl:2}]} 1
execute as @a[tag=prot2,tag=green,nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate"}]}] at @s run replaceitem entity @s armor.chest minecraft:leather_chestplate{display:{color:65331},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:protection",lvl:2},{id:"minecraft:binding_curse",lvl:2}]} 1
execute as @a[tag=prot2,tag=yellow,nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots"}]}] at @s run replaceitem entity @s armor.feet minecraft:leather_boots{display:{color:16774920},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:2}]} 1
execute as @a[tag=prot2,tag=yellow,nbt={Inventory:[{Slot:101b,id:"minecraft:leather_leggings"}]}] at @s run replaceitem entity @s armor.legs minecraft:leather_leggings{display:{color:16774920},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:2}]} 1
execute as @a[tag=prot2,tag=yellow,nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] at @s run replaceitem entity @s armor.head minecraft:leather_boots{display:{color:16774920},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:500},{id:"minecraft:protection",lvl:2},{id:"minecraft:binding_curse",lvl:2}]} 1
execute as @a[tag=prot2,tag=yellow,nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate"}]}] at @s run replaceitem entity @s armor.chest minecraft:leather_chestplate{display:{color:16774920},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:protection",lvl:2},{id:"minecraft:binding_curse",lvl:2}]} 1
execute as @a[tag=prot2,tag=gray,nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots"}]}] at @s run replaceitem entity @s armor.feet minecraft:leather_boots{display:{color:8882055},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:2}]} 1
execute as @a[tag=prot2,tag=gray,nbt={Inventory:[{Slot:101b,id:"minecraft:leather_leggings"}]}] at @s run replaceitem entity @s armor.legs minecraft:leather_leggings{display:{color:8882055},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:2}]} 1
execute as @a[tag=prot2,tag=gray,nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] at @s run replaceitem entity @s armor.head minecraft:leather_boots{display:{color:8882055},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:500},{id:"minecraft:protection",lvl:2},{id:"minecraft:binding_curse",lvl:2}]} 1
execute as @a[tag=prot2,tag=gray,nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate"}]}] at @s run replaceitem entity @s armor.chest minecraft:leather_chestplate{display:{color:8882055},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:protection",lvl:2},{id:"minecraft:binding_curse",lvl:2}]} 1
execute as @a[tag=prot2,tag=white,nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots"}]}] at @s run replaceitem entity @s armor.feet minecraft:leather_boots{display:{color:16777215},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:2}]} 1
execute as @a[tag=prot2,tag=white,nbt={Inventory:[{Slot:101b,id:"minecraft:leather_leggings"}]}] at @s run replaceitem entity @s armor.legs minecraft:leather_leggings{display:{color:16777215},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:2}]} 1
execute as @a[tag=prot2,tag=white,nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] at @s run replaceitem entity @s armor.head minecraft:leather_boots{display:{color:16777215},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:500},{id:"minecraft:protection",lvl:2},{id:"minecraft:binding_curse",lvl:2}]} 1
execute as @a[tag=prot2,tag=white,nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate"}]}] at @s run replaceitem entity @s armor.chest minecraft:leather_chestplate{display:{color:16777215},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:protection",lvl:2},{id:"minecraft:binding_curse",lvl:2}]} 1
execute as @a[tag=prot2,tag=aqua,nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots"}]}] at @s run replaceitem entity @s armor.feet minecraft:leather_boots{display:{color:5898239},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:2}]} 1
execute as @a[tag=prot2,tag=aqua,nbt={Inventory:[{Slot:101b,id:"minecraft:leather_leggings"}]}] at @s run replaceitem entity @s armor.legs minecraft:leather_leggings{display:{color:5898239},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:2}]} 1
execute as @a[tag=prot2,tag=aqua,nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] at @s run replaceitem entity @s armor.head minecraft:leather_boots{display:{color:5898239},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:500},{id:"minecraft:protection",lvl:2},{id:"minecraft:binding_curse",lvl:2}]} 1
execute as @a[tag=prot2,tag=aqua,nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate"}]}] at @s run replaceitem entity @s armor.chest minecraft:leather_chestplate{display:{color:5898239},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:protection",lvl:2},{id:"minecraft:binding_curse",lvl:2}]} 1
execute as @a[tag=prot2,tag=pink,nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots"}]}] at @s run replaceitem entity @s armor.feet minecraft:leather_boots{display:{color:16756218},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:2}]} 1
execute as @a[tag=prot2,tag=pink,nbt={Inventory:[{Slot:101b,id:"minecraft:leather_leggings"}]}] at @s run replaceitem entity @s armor.legs minecraft:leather_leggings{display:{color:16756218},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:2}]} 1
execute as @a[tag=prot2,tag=pink,nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] at @s run replaceitem entity @s armor.head minecraft:leather_boots{display:{color:16756218},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:500},{id:"minecraft:protection",lvl:2},{id:"minecraft:binding_curse",lvl:2}]} 1
execute as @a[tag=prot2,tag=pink,nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate"}]}] at @s run replaceitem entity @s armor.chest minecraft:leather_chestplate{display:{color:16756218},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:protection",lvl:2},{id:"minecraft:binding_curse",lvl:2}]} 1
execute as @a[tag=prot3,nbt={Inventory:[{Slot:100b,id:"minecraft:chainmail_boots"}]}] at @s run replaceitem entity @s armor.feet minecraft:chainmail_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:3}]} 1
execute as @a[tag=prot3,nbt={Inventory:[{Slot:101b,id:"minecraft:chainmail_leggings"}]}] at @s run replaceitem entity @s armor.legs minecraft:chainmail_leggings{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:3}]} 1
execute as @a[tag=prot3,nbt={Inventory:[{Slot:100b,id:"minecraft:iron_boots"}]}] at @s run replaceitem entity @s armor.feet minecraft:iron_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:3}]} 1
execute as @a[tag=prot3,nbt={Inventory:[{Slot:101b,id:"minecraft:iron_leggings"}]}] at @s run replaceitem entity @s armor.legs minecraft:iron_leggings{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:3}]} 1
execute as @a[tag=prot3,nbt={Inventory:[{Slot:100b,id:"minecraft:diamond_boots"}]}] at @s run replaceitem entity @s armor.feet minecraft:diamond_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:3}]} 1
execute as @a[tag=prot3,nbt={Inventory:[{Slot:101b,id:"minecraft:diamond_leggings"}]}] at @s run replaceitem entity @s armor.legs minecraft:diamond_leggings{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:3}]} 1
execute as @a[tag=prot3,tag=red,nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots"}]}] at @s run replaceitem entity @s armor.feet minecraft:leather_boots{display:{color:16711680},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:3}]} 1
execute as @a[tag=prot3,tag=red,nbt={Inventory:[{Slot:101b,id:"minecraft:leather_leggings"}]}] at @s run replaceitem entity @s armor.legs minecraft:leather_leggings{display:{color:16711680},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:3}]} 1
execute as @a[tag=prot3,tag=red,nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] at @s run replaceitem entity @s armor.head minecraft:leather_boots{display:{color:16711680},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:500},{id:"minecraft:protection",lvl:3},{id:"minecraft:binding_curse",lvl:3}]} 1
execute as @a[tag=prot3,tag=red,nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate"}]}] at @s run replaceitem entity @s armor.chest minecraft:leather_chestplate{display:{color:16711680},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:protection",lvl:3},{id:"minecraft:binding_curse",lvl:3}]} 1
execute as @a[tag=prot3,tag=blue,nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots"}]}] at @s run replaceitem entity @s armor.feet minecraft:leather_boots{display:{color:6911},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:3}]} 1
execute as @a[tag=prot3,tag=blue,nbt={Inventory:[{Slot:101b,id:"minecraft:leather_leggings"}]}] at @s run replaceitem entity @s armor.legs minecraft:leather_leggings{display:{color:6911},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:3}]} 1
execute as @a[tag=prot3,tag=blue,nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] at @s run replaceitem entity @s armor.head minecraft:leather_boots{display:{color:6911},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:500},{id:"minecraft:protection",lvl:3},{id:"minecraft:binding_curse",lvl:3}]} 1
execute as @a[tag=prot3,tag=blue,nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate"}]}] at @s run replaceitem entity @s armor.chest minecraft:leather_chestplate{display:{color:6911},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:protection",lvl:3},{id:"minecraft:binding_curse",lvl:3}]} 1
execute as @a[tag=prot3,tag=green,nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots"}]}] at @s run replaceitem entity @s armor.feet minecraft:leather_boots{display:{color:65331},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:3}]} 1
execute as @a[tag=prot3,tag=green,nbt={Inventory:[{Slot:101b,id:"minecraft:leather_leggings"}]}] at @s run replaceitem entity @s armor.legs minecraft:leather_leggings{display:{color:65331},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:3}]} 1
execute as @a[tag=prot3,tag=green,nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] at @s run replaceitem entity @s armor.head minecraft:leather_boots{display:{color:65331},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:500},{id:"minecraft:protection",lvl:3},{id:"minecraft:binding_curse",lvl:3}]} 1
execute as @a[tag=prot3,tag=green,nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate"}]}] at @s run replaceitem entity @s armor.chest minecraft:leather_chestplate{display:{color:65331},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:protection",lvl:3},{id:"minecraft:binding_curse",lvl:3}]} 1
execute as @a[tag=prot3,tag=yellow,nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots"}]}] at @s run replaceitem entity @s armor.feet minecraft:leather_boots{display:{color:16774920},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:3}]} 1
execute as @a[tag=prot3,tag=yellow,nbt={Inventory:[{Slot:101b,id:"minecraft:leather_leggings"}]}] at @s run replaceitem entity @s armor.legs minecraft:leather_leggings{display:{color:16774920},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:3}]} 1
execute as @a[tag=prot3,tag=yellow,nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] at @s run replaceitem entity @s armor.head minecraft:leather_boots{display:{color:16774920},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:500},{id:"minecraft:protection",lvl:3},{id:"minecraft:binding_curse",lvl:3}]} 1
execute as @a[tag=prot3,tag=yellow,nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate"}]}] at @s run replaceitem entity @s armor.chest minecraft:leather_chestplate{display:{color:16774920},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:protection",lvl:3},{id:"minecraft:binding_curse",lvl:3}]} 1
execute as @a[tag=prot3,tag=gray,nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots"}]}] at @s run replaceitem entity @s armor.feet minecraft:leather_boots{display:{color:8882055},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:3}]} 1
execute as @a[tag=prot3,tag=gray,nbt={Inventory:[{Slot:101b,id:"minecraft:leather_leggings"}]}] at @s run replaceitem entity @s armor.legs minecraft:leather_leggings{display:{color:8882055},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:3}]} 1
execute as @a[tag=prot3,tag=gray,nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] at @s run replaceitem entity @s armor.head minecraft:leather_boots{display:{color:8882055},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:500},{id:"minecraft:protection",lvl:3},{id:"minecraft:binding_curse",lvl:3}]} 1
execute as @a[tag=prot3,tag=gray,nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate"}]}] at @s run replaceitem entity @s armor.chest minecraft:leather_chestplate{display:{color:8882055},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:protection",lvl:3},{id:"minecraft:binding_curse",lvl:3}]} 1
execute as @a[tag=prot3,tag=white,nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots"}]}] at @s run replaceitem entity @s armor.feet minecraft:leather_boots{display:{color:16777215},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:3}]} 1
execute as @a[tag=prot3,tag=white,nbt={Inventory:[{Slot:101b,id:"minecraft:leather_leggings"}]}] at @s run replaceitem entity @s armor.legs minecraft:leather_leggings{display:{color:16777215},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:3}]} 1
execute as @a[tag=prot3,tag=white,nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] at @s run replaceitem entity @s armor.head minecraft:leather_boots{display:{color:16777215},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:500},{id:"minecraft:protection",lvl:3},{id:"minecraft:binding_curse",lvl:3}]} 1
execute as @a[tag=prot3,tag=white,nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate"}]}] at @s run replaceitem entity @s armor.chest minecraft:leather_chestplate{display:{color:16777215},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:protection",lvl:3},{id:"minecraft:binding_curse",lvl:3}]} 1
execute as @a[tag=prot3,tag=aqua,nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots"}]}] at @s run replaceitem entity @s armor.feet minecraft:leather_boots{display:{color:5898239},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:3}]} 1
execute as @a[tag=prot3,tag=aqua,nbt={Inventory:[{Slot:101b,id:"minecraft:leather_leggings"}]}] at @s run replaceitem entity @s armor.legs minecraft:leather_leggings{display:{color:5898239},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:3}]} 1
execute as @a[tag=prot3,tag=aqua,nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] at @s run replaceitem entity @s armor.head minecraft:leather_boots{display:{color:5898239},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:500},{id:"minecraft:protection",lvl:3},{id:"minecraft:binding_curse",lvl:3}]} 1
execute as @a[tag=prot3,tag=aqua,nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate"}]}] at @s run replaceitem entity @s armor.chest minecraft:leather_chestplate{display:{color:5898239},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:protection",lvl:3},{id:"minecraft:binding_curse",lvl:3}]} 1
execute as @a[tag=prot3,tag=pink,nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots"}]}] at @s run replaceitem entity @s armor.feet minecraft:leather_boots{display:{color:16756218},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:3}]} 1
execute as @a[tag=prot3,tag=pink,nbt={Inventory:[{Slot:101b,id:"minecraft:leather_leggings"}]}] at @s run replaceitem entity @s armor.legs minecraft:leather_leggings{display:{color:16756218},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:3}]} 1
execute as @a[tag=prot3,tag=pink,nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] at @s run replaceitem entity @s armor.head minecraft:leather_boots{display:{color:16756218},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:500},{id:"minecraft:protection",lvl:3},{id:"minecraft:binding_curse",lvl:3}]} 1
execute as @a[tag=prot3,tag=pink,nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate"}]}] at @s run replaceitem entity @s armor.chest minecraft:leather_chestplate{display:{color:16756218},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:protection",lvl:3},{id:"minecraft:binding_curse",lvl:3}]} 1
execute as @a[tag=prot4,nbt={Inventory:[{Slot:100b,id:"minecraft:chainmail_boots"}]}] at @s run replaceitem entity @s armor.feet minecraft:chainmail_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:4}]} 1
execute as @a[tag=prot4,nbt={Inventory:[{Slot:101b,id:"minecraft:chainmail_leggings"}]}] at @s run replaceitem entity @s armor.legs minecraft:chainmail_leggings{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:4}]} 1
execute as @a[tag=prot4,nbt={Inventory:[{Slot:100b,id:"minecraft:iron_boots"}]}] at @s run replaceitem entity @s armor.feet minecraft:iron_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:4}]} 1
execute as @a[tag=prot4,nbt={Inventory:[{Slot:101b,id:"minecraft:iron_leggings"}]}] at @s run replaceitem entity @s armor.legs minecraft:iron_leggings{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:4}]} 1
execute as @a[tag=prot4,nbt={Inventory:[{Slot:100b,id:"minecraft:diamond_boots"}]}] at @s run replaceitem entity @s armor.feet minecraft:diamond_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:4}]} 1
execute as @a[tag=prot4,nbt={Inventory:[{Slot:101b,id:"minecraft:diamond_leggings"}]}] at @s run replaceitem entity @s armor.legs minecraft:diamond_leggings{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:4}]} 1
execute as @a[tag=prot4,tag=red,nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots"}]}] at @s run replaceitem entity @s armor.feet minecraft:leather_boots{display:{color:16711680},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:4}]} 1
execute as @a[tag=prot4,tag=red,nbt={Inventory:[{Slot:101b,id:"minecraft:leather_leggings"}]}] at @s run replaceitem entity @s armor.legs minecraft:leather_leggings{display:{color:16711680},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:4}]} 1
execute as @a[tag=prot4,tag=red,nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] at @s run replaceitem entity @s armor.head minecraft:leather_boots{display:{color:16711680},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:500},{id:"minecraft:protection",lvl:4},{id:"minecraft:binding_curse",lvl:4}]} 1
execute as @a[tag=prot4,tag=red,nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate"}]}] at @s run replaceitem entity @s armor.chest minecraft:leather_chestplate{display:{color:16711680},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:protection",lvl:4},{id:"minecraft:binding_curse",lvl:4}]} 1
execute as @a[tag=prot4,tag=blue,nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots"}]}] at @s run replaceitem entity @s armor.feet minecraft:leather_boots{display:{color:6911},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:4}]} 1
execute as @a[tag=prot4,tag=blue,nbt={Inventory:[{Slot:101b,id:"minecraft:leather_leggings"}]}] at @s run replaceitem entity @s armor.legs minecraft:leather_leggings{display:{color:6911},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:4}]} 1
execute as @a[tag=prot4,tag=blue,nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] at @s run replaceitem entity @s armor.head minecraft:leather_boots{display:{color:6911},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:500},{id:"minecraft:protection",lvl:4},{id:"minecraft:binding_curse",lvl:4}]} 1
execute as @a[tag=prot4,tag=blue,nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate"}]}] at @s run replaceitem entity @s armor.chest minecraft:leather_chestplate{display:{color:6911},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:protection",lvl:4},{id:"minecraft:binding_curse",lvl:4}]} 1
execute as @a[tag=prot4,tag=green,nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots"}]}] at @s run replaceitem entity @s armor.feet minecraft:leather_boots{display:{color:65331},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:4}]} 1
execute as @a[tag=prot4,tag=green,nbt={Inventory:[{Slot:101b,id:"minecraft:leather_leggings"}]}] at @s run replaceitem entity @s armor.legs minecraft:leather_leggings{display:{color:65331},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:4}]} 1
execute as @a[tag=prot4,tag=green,nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] at @s run replaceitem entity @s armor.head minecraft:leather_boots{display:{color:65331},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:500},{id:"minecraft:protection",lvl:4},{id:"minecraft:binding_curse",lvl:4}]} 1
execute as @a[tag=prot4,tag=green,nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate"}]}] at @s run replaceitem entity @s armor.chest minecraft:leather_chestplate{display:{color:65331},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:protection",lvl:4},{id:"minecraft:binding_curse",lvl:4}]} 1
execute as @a[tag=prot4,tag=yellow,nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots"}]}] at @s run replaceitem entity @s armor.feet minecraft:leather_boots{display:{color:16774920},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:4}]} 1
execute as @a[tag=prot4,tag=yellow,nbt={Inventory:[{Slot:101b,id:"minecraft:leather_leggings"}]}] at @s run replaceitem entity @s armor.legs minecraft:leather_leggings{display:{color:16774920},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:4}]} 1
execute as @a[tag=prot4,tag=yellow,nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] at @s run replaceitem entity @s armor.head minecraft:leather_boots{display:{color:16774920},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:500},{id:"minecraft:protection",lvl:4},{id:"minecraft:binding_curse",lvl:4}]} 1
execute as @a[tag=prot4,tag=yellow,nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate"}]}] at @s run replaceitem entity @s armor.chest minecraft:leather_chestplate{display:{color:16774920},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:protection",lvl:4},{id:"minecraft:binding_curse",lvl:4}]} 1
execute as @a[tag=prot4,tag=gray,nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots"}]}] at @s run replaceitem entity @s armor.feet minecraft:leather_boots{display:{color:8882055},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:4}]} 1
execute as @a[tag=prot4,tag=gray,nbt={Inventory:[{Slot:101b,id:"minecraft:leather_leggings"}]}] at @s run replaceitem entity @s armor.legs minecraft:leather_leggings{display:{color:8882055},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:4}]} 1
execute as @a[tag=prot4,tag=gray,nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] at @s run replaceitem entity @s armor.head minecraft:leather_boots{display:{color:8882055},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:500},{id:"minecraft:protection",lvl:4},{id:"minecraft:binding_curse",lvl:4}]} 1
execute as @a[tag=prot4,tag=gray,nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate"}]}] at @s run replaceitem entity @s armor.chest minecraft:leather_chestplate{display:{color:8882055},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:protection",lvl:4},{id:"minecraft:binding_curse",lvl:4}]} 1
execute as @a[tag=prot4,tag=white,nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots"}]}] at @s run replaceitem entity @s armor.feet minecraft:leather_boots{display:{color:16777215},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:4}]} 1
execute as @a[tag=prot4,tag=white,nbt={Inventory:[{Slot:101b,id:"minecraft:leather_leggings"}]}] at @s run replaceitem entity @s armor.legs minecraft:leather_leggings{display:{color:16777215},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:4}]} 1
execute as @a[tag=prot4,tag=white,nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] at @s run replaceitem entity @s armor.head minecraft:leather_boots{display:{color:16777215},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:500},{id:"minecraft:protection",lvl:4},{id:"minecraft:binding_curse",lvl:4}]} 1
execute as @a[tag=prot4,tag=white,nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate"}]}] at @s run replaceitem entity @s armor.chest minecraft:leather_chestplate{display:{color:16777215},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:protection",lvl:4},{id:"minecraft:binding_curse",lvl:4}]} 1
execute as @a[tag=prot4,tag=aqua,nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots"}]}] at @s run replaceitem entity @s armor.feet minecraft:leather_boots{display:{color:5898239},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:4}]} 1
execute as @a[tag=prot4,tag=aqua,nbt={Inventory:[{Slot:101b,id:"minecraft:leather_leggings"}]}] at @s run replaceitem entity @s armor.legs minecraft:leather_leggings{display:{color:5898239},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:4}]} 1
execute as @a[tag=prot4,tag=aqua,nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] at @s run replaceitem entity @s armor.head minecraft:leather_boots{display:{color:5898239},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:500},{id:"minecraft:protection",lvl:4},{id:"minecraft:binding_curse",lvl:4}]} 1
execute as @a[tag=prot4,tag=aqua,nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate"}]}] at @s run replaceitem entity @s armor.chest minecraft:leather_chestplate{display:{color:5898239},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:protection",lvl:4},{id:"minecraft:binding_curse",lvl:4}]} 1
execute as @a[tag=prot4,tag=pink,nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots"}]}] at @s run replaceitem entity @s armor.feet minecraft:leather_boots{display:{color:16756218},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:4}]} 1
execute as @a[tag=prot4,tag=pink,nbt={Inventory:[{Slot:101b,id:"minecraft:leather_leggings"}]}] at @s run replaceitem entity @s armor.legs minecraft:leather_leggings{display:{color:16756218},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:4}]} 1
execute as @a[tag=prot4,tag=pink,nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] at @s run replaceitem entity @s armor.head minecraft:leather_boots{display:{color:16756218},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:500},{id:"minecraft:protection",lvl:4},{id:"minecraft:binding_curse",lvl:4}]} 1
execute as @a[tag=prot4,tag=pink,nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate"}]}] at @s run replaceitem entity @s armor.chest minecraft:leather_chestplate{display:{color:16756218},Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:protection",lvl:4},{id:"minecraft:binding_curse",lvl:4}]} 1


execute as @a[tag=prot2] at @s run clear @s iron_chestplate
execute as @a[tag=prot4] at @s run clear @s diamond_chestplate
execute as @a[tag=prot1] at @s run clear @s chainmail_chestplate
execute as @a[tag=prot3] at @s run clear @s golden_chestplate
execute as @a[tag=sharp] at @s run clear @s golden_sword
