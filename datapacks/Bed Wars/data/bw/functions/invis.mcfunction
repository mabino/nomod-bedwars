execute as @a[nbt={ActiveEffects:[{Id:14b}]}] at @s run replaceitem entity @s armor.head air
execute as @a[nbt={ActiveEffects:[{Id:14b}]}] at @s run replaceitem entity @s armor.chest air
execute as @a[nbt={ActiveEffects:[{Id:14b}]}] at @s run replaceitem entity @s armor.legs air
execute as @a[nbt={ActiveEffects:[{Id:14b}]}] at @s run replaceitem entity @s armor.feet air
execute as @a[nbt={ActiveEffects:[{Id:14b}]}] at @s run scoreboard players add @s invis 1

execute as @a[scores={invis=1..}] at @s unless entity @s[nbt={ActiveEffects:[{Id:14b}]}] run scoreboard players set @s invis 600

execute as @a at @s if entity @s[scores={invis=600}] run replaceitem entity @s[team=red] armor.head minecraft:leather_helmet{display:{color:16711680},HideFlags:3,Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:binding_curse",lvl:1}]} 1
execute as @a at @s if entity @s[scores={invis=600}] run replaceitem entity @s[team=red] armor.chest minecraft:leather_chestplate{display:{color:16711680},HideFlags:3,Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:binding_curse",lvl:1}]} 1
execute as @a at @s if entity @s[scores={invis=600}] run replaceitem entity @s[team=red] armor.legs minecraft:leather_leggings{display:{color:16711680},HideFlags:3,Unbreakable:1b} 1
execute as @a at @s if entity @s[scores={invis=600}] unless entity @s[tag=chainboots] unless entity @s[tag=ironboots] unless entity @s[tag=diaboots] run replaceitem entity @s[team=red] armor.feet minecraft:leather_boots{display:{color:16711680},HideFlags:3,Unbreakable:1b} 1
execute as @a at @s if entity @s[scores={invis=600}] run replaceitem entity @s[team=blue] armor.head minecraft:leather_helmet{display:{color:6911},HideFlags:3,Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:binding_curse",lvl:1}]} 1
execute as @a at @s if entity @s[scores={invis=600}] run replaceitem entity @s[team=blue] armor.chest minecraft:leather_chestplate{display:{color:6911},HideFlags:3,Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:binding_curse",lvl:1}]} 1
execute as @a at @s if entity @s[scores={invis=600}] run replaceitem entity @s[team=blue] armor.legs minecraft:leather_leggings{display:{color:6911},HideFlags:3,Unbreakable:1b} 1
execute as @a at @s if entity @s[scores={invis=600}] unless entity @s[tag=chainboots] unless entity @s[tag=ironboots] unless entity @s[tag=diaboots] run replaceitem entity @s[team=blue] armor.feet minecraft:leather_boots{display:{color:6911},HideFlags:3,Unbreakable:1b} 1
execute as @a at @s if entity @s[scores={invis=600}] run replaceitem entity @s[team=green] armor.head minecraft:leather_helmet{display:{color:65331},HideFlags:3,Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:binding_curse",lvl:1}]} 1
execute as @a at @s if entity @s[scores={invis=600}] run replaceitem entity @s[team=green] armor.chest minecraft:leather_chestplate{display:{color:65331},HideFlags:3,Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:binding_curse",lvl:1}]} 1
execute as @a at @s if entity @s[scores={invis=600}] run replaceitem entity @s[team=green] armor.legs minecraft:leather_leggings{display:{color:65331},HideFlags:3,Unbreakable:1b} 1
execute as @a at @s if entity @s[scores={invis=600}] unless entity @s[tag=chainboots] unless entity @s[tag=ironboots] unless entity @s[tag=diaboots] run replaceitem entity @s[team=green] armor.feet minecraft:leather_boots{display:{color:65331},HideFlags:3,Unbreakable:1b} 1
execute as @a at @s if entity @s[scores={invis=600}] run replaceitem entity @s[team=gray] armor.head minecraft:leather_helmet{display:{color:8882055},HideFlags:3,Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:binding_curse",lvl:1}]} 1
execute as @a at @s if entity @s[scores={invis=600}] run replaceitem entity @s[team=gray] armor.chest minecraft:leather_chestplate{display:{color:8882055},HideFlags:3,Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:binding_curse",lvl:1}]} 1
execute as @a at @s if entity @s[scores={invis=600}] run replaceitem entity @s[team=gray] armor.legs minecraft:leather_leggings{display:{color:8882055},HideFlags:3,Unbreakable:1b} 1
execute as @a at @s if entity @s[scores={invis=600}] unless entity @s[tag=chainboots] unless entity @s[tag=ironboots] unless entity @s[tag=diaboots] run replaceitem entity @s[team=gray] armor.feet minecraft:leather_boots{display:{color:8882055},HideFlags:3,Unbreakable:1b} 1
execute as @a at @s if entity @s[scores={invis=600}] run replaceitem entity @s[team=yellow] armor.head minecraft:leather_helmet{display:{color:16774920},HideFlags:3,Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:binding_curse",lvl:1}]} 1
execute as @a at @s if entity @s[scores={invis=600}] run replaceitem entity @s[team=yellow] armor.chest minecraft:leather_chestplate{display:{color:16774920},HideFlags:3,Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:binding_curse",lvl:1}]} 1
execute as @a at @s if entity @s[scores={invis=600}] run replaceitem entity @s[team=yellow] armor.legs minecraft:leather_leggings{display:{color:16774920},HideFlags:3,Unbreakable:1b} 1
execute as @a at @s if entity @s[scores={invis=600}] unless entity @s[tag=chainboots] unless entity @s[tag=ironboots] unless entity @s[tag=diaboots] run replaceitem entity @s[team=yellow] armor.feet minecraft:leather_boots{display:{color:16774920},HideFlags:3,Unbreakable:1b} 1
execute as @a at @s if entity @s[scores={invis=600}] run replaceitem entity @s[team=white] armor.head minecraft:leather_helmet{display:{color:16777215},HideFlags:3,Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:binding_curse",lvl:1}]} 1
execute as @a at @s if entity @s[scores={invis=600}] run replaceitem entity @s[team=white] armor.chest minecraft:leather_chestplate{display:{color:16777215},HideFlags:3,Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:binding_curse",lvl:1}]} 1
execute as @a at @s if entity @s[scores={invis=600}] run replaceitem entity @s[team=white] armor.legs minecraft:leather_leggings{display:{color:16777215},HideFlags:3,Unbreakable:1b} 1
execute as @a at @s if entity @s[scores={invis=600}] unless entity @s[tag=chainboots] unless entity @s[tag=ironboots] unless entity @s[tag=diaboots] run replaceitem entity @s[team=white] armor.feet minecraft:leather_boots{display:{color:16777215},HideFlags:3,Unbreakable:1b} 1
execute as @a at @s if entity @s[scores={invis=600}] run replaceitem entity @s[team=aqua] armor.head minecraft:leather_helmet{display:{color:5898239},HideFlags:3,Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:binding_curse",lvl:1}]} 1
execute as @a at @s if entity @s[scores={invis=600}] run replaceitem entity @s[team=aqua] armor.chest minecraft:leather_chestplate{display:{color:5898239},HideFlags:3,Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:binding_curse",lvl:1}]} 1
execute as @a at @s if entity @s[scores={invis=600}] run replaceitem entity @s[team=aqua] armor.legs minecraft:leather_leggings{display:{color:5898239},HideFlags:3,Unbreakable:1b} 1
execute as @a at @s if entity @s[scores={invis=600}] unless entity @s[tag=chainboots] unless entity @s[tag=ironboots] unless entity @s[tag=diaboots] run replaceitem entity @s[team=aqua] armor.feet minecraft:leather_boots{display:{color:5898239},HideFlags:3,Unbreakable:1b} 1
execute as @a at @s if entity @s[scores={invis=600}] run replaceitem entity @s[team=pink] armor.head minecraft:leather_helmet{display:{color:16756218},HideFlags:3,Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:binding_curse",lvl:1}]} 1
execute as @a at @s if entity @s[scores={invis=600}] run replaceitem entity @s[team=pink] armor.chest minecraft:leather_chestplate{display:{color:16756218},HideFlags:3,Unbreakable:1b,Enchantments:[{id:"minecraft:blast_protection",lvl:5},{id:"minecraft:binding_curse",lvl:1}]} 1
execute as @a at @s if entity @s[scores={invis=600}] run replaceitem entity @s[team=pink] armor.legs minecraft:leather_leggings{display:{color:16756218},HideFlags:3,Unbreakable:1b} 1
execute as @a at @s if entity @s[scores={invis=600}] unless entity @s[tag=chainboots] unless entity @s[tag=ironboots] unless entity @s[tag=diaboots] run replaceitem entity @s[team=pink] armor.feet minecraft:leather_boots{display:{color:16756218},HideFlags:3,Unbreakable:1b} 1


execute as @a[scores={invis=600},tag=chainboots] at @s run replaceitem entity @s armor.feet minecraft:chainmail_boots{Unbreakable:1b} 1
execute as @a[scores={invis=600},tag=chainlegs] at @s run replaceitem entity @s armor.legs minecraft:chainmail_leggings{Unbreakable:1b} 1
execute as @a[scores={invis=600},tag=ironboots] at @s run replaceitem entity @s armor.feet minecraft:iron_boots{Unbreakable:1b} 1
execute as @a[scores={invis=600},tag=ironlegs] at @s run replaceitem entity @s armor.legs minecraft:iron_leggings{Unbreakable:1b} 1
execute as @a[scores={invis=600},tag=diaboots] at @s run replaceitem entity @s armor.feet minecraft:diamond_boots{Unbreakable:1b} 1
execute as @a[scores={invis=600},tag=dialegs] at @s run replaceitem entity @s armor.legs minecraft:diamond_leggings{Unbreakable:1b} 1
execute if entity @a[scores={invis=600}] run function bw:dia
execute as @a[scores={invis=600}] at @s run scoreboard players reset @s invis
