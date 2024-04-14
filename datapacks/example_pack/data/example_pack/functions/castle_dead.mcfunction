#by 007d83QQ


#start
scoreboard players set @a[scores={cross_dead=1},team=pr_red] cross_dead 400
scoreboard players set @a[scores={cross_dead=1},team=pr_blue] cross_dead 400
execute if entity @a[team=pr_blue,scores={skill_8=80..280}] run scoreboard players set @a[scores={cross_dead=1},team=pr_red] cross_dead 800
execute if entity @a[team=pr_blue,scores={skill_8=80..280}] run scoreboard players set @a[scores={cross_dead=1},team=pr_blue] cross_dead 800
execute if entity @a[team=pr_red,scores={skill_8=80..280}] run scoreboard players set @a[scores={cross_dead=1},team=pr_red] cross_dead 800
execute if entity @a[team=pr_red,scores={skill_8=80..280}] run scoreboard players set @a[scores={cross_dead=1},team=pr_blue] cross_dead 800
title @a[scores={cross_dead=200..},team=pr_red] times 0 20 0
title @a[scores={cross_dead=200..},team=pr_blue] times 0 20 0
tp @a[scores={cross_dead=200..},team=pr_red] -1494 63 8
tp @a[scores={cross_dead=200..},team=pr_blue] -1494 63 8
gamemode spectator @a[scores={cross_dead=200..},team=pr_red]
gamemode spectator @a[scores={cross_dead=200..},team=pr_blue]
scoreboard players remove @a[scores={cross_dead=200..},team=pr_red] cross_dead 198
scoreboard players remove @a[scores={cross_dead=200..},team=pr_blue] cross_dead 198
execute as @a[scores={cross_dead=2..202},team=pr_red] run title @s subtitle ["",{"text":"將在","color":"gray","bold":"true"},{"score":{"name":"@s","objective":"cross_dead"},"color":"gold"},{"text":"刻後重生","color":"gray","bold":"true"}]
execute as @a[scores={cross_dead=2..202},team=pr_blue] run title @s subtitle ["",{"text":"將在","color":"gray","bold":"true"},{"score":{"name":"@s","objective":"cross_dead"},"color":"gold"},{"text":"刻後重生","color":"gray","bold":"true"}]
scoreboard players add @a[scores={cross_dead=2..202},team=pr_red] cross_dead 198
scoreboard players add @a[scores={cross_dead=2..202},team=pr_blue] cross_dead 198
title @a[scores={cross_dead=200..},team=pr_red] title {"text":"你死了","color":"red","bold":"true"}
title @a[scores={cross_dead=200..},team=pr_blue] title {"text":"你死了","color":"red","bold":"true"}


#continue
scoreboard players remove @a[scores={cross_dead=200..},team=pr_red] cross_dead 1
scoreboard players remove @a[scores={cross_dead=200..},team=pr_blue] cross_dead 1


#end
tp @a[scores={cross_dead=199},team=pr_red] -1539 16 8
tp @a[scores={cross_dead=199},team=pr_blue] -1449 16 8
title @a[scores={cross_dead=199},team=pr_red] times 20 40 20
title @a[scores={cross_dead=199},team=pr_blue] times 20 40 20
title @a[scores={cross_dead=199},team=pr_red] subtitle {"text":" "}
title @a[scores={cross_dead=199},team=pr_blue] subtitle {"text":" "}
title @a[scores={cross_dead=199},team=pr_red] title {"text":"已重生!","color":"green","bold":"true"}
title @a[scores={cross_dead=199},team=pr_blue] title {"text":"已重生!","color":"green","bold":"true"}
gamemode adventure @a[scores={cross_dead=199},team=pr_blue]
gamemode adventure @a[scores={cross_dead=199},team=pr_red]
execute as @a[scores={cross_dead=199},team=pr_red] at @s if score @s pr matches 7 run clear @s minecraft:trident
execute as @a[scores={cross_dead=199},team=pr_red] at @s if score @s pr matches 7 run give @s trident{AttributeModifiers: [{Slot:"mainhand",AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.9,Operation:0,UUID:[I;1498693494,1027158888,1898994005,860320107]}, {Slot:"mainhand",AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;1498693494,1027158888,1898994005,860320107]}],display:{Name:'["冰術士之戟"]'},Unbreakable:1,Enchantments:[{id:"loyalty",lvl:1}]}
execute as @a[scores={cross_dead=199},team=pr_blue] at @s if score @s pr matches 7 run clear @s minecraft:trident
execute as @a[scores={cross_dead=199},team=pr_blue] at @s if score @s pr matches 7 run give @s trident{AttributeModifiers: [{Slot:"mainhand",AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.9,Operation:0,UUID:[I;1498693494,1027158888,1898994005,860320107]}, {Slot:"mainhand",AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;1498693494,1027158888,1898994005,860320107]}],display:{Name:'["冰術士之戟"]'},Unbreakable:1,Enchantments:[{id:"loyalty",lvl:1}]}
scoreboard players reset @a[scores={cross_dead=199},team=pr_blue] cross_dead
scoreboard players reset @a[scores={cross_dead=199},team=pr_red] cross_dead