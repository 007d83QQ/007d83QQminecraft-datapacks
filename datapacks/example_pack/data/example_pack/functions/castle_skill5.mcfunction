#by 007d83QQ


#waiting
execute as @a[scores={skill_5=1},team=pr_red] at @s anchored eyes run particle minecraft:portal ~ ~ ~ 0.5 0.5 0.5 1 10
execute as @a[scores={skill_5=1},team=pr_blue] at @s anchored eyes run particle minecraft:portal ~ ~ ~ 0.5 0.5 0.5 1 10
item replace entity @a[scores={skill_5=1},team=pr_blue] container.0 with minecraft:bow{Enchantments:[{id:"power",lvl:7},{id:"infinity",lvl:1}],display:{Name:'["[疾如矢]已啟動"]'},HideFlags:63,Unbreakable:1}
item replace entity @a[scores={skill_5=1},team=pr_red] container.0 with minecraft:bow{Enchantments:[{id:"power",lvl:7},{id:"infinity",lvl:1}],display:{Name:'["[疾如矢]已啟動"]'},HideFlags:63,Unbreakable:1}
execute as @a[scores={skill_5=1},team=pr_red] at @s run tag @e[type=arrow,distance=..2,nbt={damage:6.0}] add skill_1r
execute as @a[scores={skill_5=1},team=pr_blue] at @s run tag @e[type=arrow,distance=..2,nbt={damage:6.0}] add skill_1b
execute as @a[scores={skill_5=1},team=pr_red] at @s run data modify entity @e[type=arrow,tag=skill_1r,nbt={damage:6.0},limit=1] PierceLevel set value 20
execute as @a[scores={skill_5=1},team=pr_blue] at @s run data modify entity @e[type=arrow,tag=skill_1b,nbt={damage:6.0},limit=1] PierceLevel set value 20
execute as @a[scores={skill_5=1},team=pr_red] at @s if entity @e[type=arrow,distance=..2,nbt={damage:6.0}] run scoreboard players add @s skill_5 1
execute as @a[scores={skill_5=1},team=pr_blue] at @s if entity @e[type=arrow,distance=..2,nbt={damage:6.0}] run scoreboard players add @s skill_5 1
execute as @a[scores={skill_5=2},team=pr_red] at @s if entity @e[type=arrow,distance=..2,nbt={damage:6.0}] run item replace entity @s container.0 with minecraft:barrier{display:{Name:'["禁用弓箭"]'}}
execute as @a[scores={skill_5=2},team=pr_blue] at @s if entity @e[type=arrow,distance=..2,nbt={damage:6.0}] run item replace entity @s container.0 with minecraft:barrier{display:{Name:'["禁用弓箭"]'}}


#teleport
tp @a[scores={skill_5=2},team=pr_red] @e[type=arrow,limit=1,tag=skill_1r]
tp @a[scores={skill_5=2},team=pr_blue] @e[type=arrow,limit=1,tag=skill_1b]
execute as @a[scores={skill_5=2},team=pr_red] at @s anchored eyes run particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 1 10
execute as @a[scores={skill_5=2},team=pr_blue] at @s anchored eyes run particle minecraft:enchant ~ ~ ~ 0.5 0.5 0.5 1 10
execute if entity @e[tag=skill_1r,nbt={inGround:1b}] run scoreboard players add @a[scores={skill_5=2},team=pr_red] skill_5 1
execute if entity @e[tag=skill_1b,nbt={inGround:1b}] run scoreboard players add @a[scores={skill_5=2},team=pr_blue] skill_5 1
tag @e[tag=skill_1r,nbt={inGround:1}] remove skill_1r
tag @e[tag=skill_1b,nbt={inGround:1}] remove skill_1b


#end&cooldown
item replace entity @a[scores={skill_5=3},team=pr_red,tag=!skill9b_be2] container.0 with bow{Enchantments:[{id:"infinity",lvl:1},{id:"power",lvl:3}],Unbreakable:1}
item replace entity @a[scores={skill_5=3},team=pr_blue,tag=!skill9r_be2] container.0 with bow{Enchantments:[{id:"infinity",lvl:1},{id:"power",lvl:3}],Unbreakable:1}
scoreboard players add @a[scores={skill_5=3..},team=pr_red] skill_5 1
scoreboard players add @a[scores={skill_5=3..},team=pr_blue] skill_5 1
give @a[scores={skill_5=1403},team=pr_red] minecraft:tripwire_hook{display:{Name:'["疾如矢(冷卻70秒,Q鍵使用)"]'}}
give @a[scores={skill_5=1403},team=pr_blue] minecraft:tripwire_hook{display:{Name:'["疾如矢(冷卻70秒,Q鍵使用)"]'}}
scoreboard players reset @a[scores={skill_5=1403},team=pr_red] skill_5
scoreboard players reset @a[scores={skill_5=1403},team=pr_blue] skill_5







