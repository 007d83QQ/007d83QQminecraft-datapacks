#by 007d83QQ

scoreboard players add red skill_6_2 1
scoreboard players add blue skill_6_2 1
execute at @a[team=pr_red,scores={skill_6_2=1..}] run scoreboard players set red skill_6_2 0
execute at @a[team=pr_blue,scores={skill_6_2=1..}] run scoreboard players set blue skill_6_2 0
execute if score red skill_6_2 matches 300.. run scoreboard players set red skill_6_2 300
execute if score blue skill_6_2 matches 300.. run scoreboard players set blue skill_6_2 300
execute if score blue skill_6_2 matches 300 run clear @a[team=pr_blue,scores={pr=6},nbt=!{SelectedItem:{tag:{Tags:["skill6"]}}}] wooden_axe
execute if score red skill_6_2 matches 300 run clear @a[team=pr_red,scores={pr=6},nbt=!{SelectedItem:{tag:{Tags:["skill6"]}}}] wooden_axe
execute if score blue skill_6_2 matches 300 run give @a[team=pr_blue,scores={pr=6},nbt=!{SelectedItem:{tag:{Tags:["skill6"]}}},tag=!skill9r_be2] wooden_axe{Enchantments:[{id:"sharpness",lvl:100}],Damage:58,Tags:["skill6"],display:{Name:'["THE 巨槌"]'},AttributeModifiers: [{Slot:"mainhand",AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-3.8,Operation:0,UUID:[I;1498693494,1027158888,1898994005,860320107]}, {Slot:"mainhand",AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:50,Operation:0,UUID:[I;1498693494,1027158888,1898994005,860320107]}]}
execute if score red skill_6_2 matches 300 run give @a[team=pr_red,scores={pr=6},nbt=!{SelectedItem:{tag:{Tags:["skill6"]}}},tag=!skill9b_be2] wooden_axe{Enchantments:[{id:"sharpness",lvl:100}],Damage:58,Tags:["skill6"],display:{Name:'["THE 巨槌"]'},AttributeModifiers: [{Slot:"mainhand",AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-3.8,Operation:0,UUID:[I;1498693494,1027158888,1898994005,860320107]}, {Slot:"mainhand",AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:50,Operation:0,UUID:[I;1498693494,1027158888,1898994005,860320107]}]}
give @a[team=pr_red,scores={skill_6_2=1},nbt=!{SelectedItem:{tag:{Tags:["skill6"]}}},tag=!skill9b_be2] wooden_axe{display:{Name:'["備用工具槌"]'},Damage:58,AttributeModifiers: [{Slot:"mainhand",AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-3.4,Operation:0,UUID:[I;1498693494,1027158888,1898994005,860320107]}, {Slot:"mainhand",AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:5,Operation:0,UUID:[I;1498693494,1027158888,1898994005,860320107]}]}
give @a[team=pr_blue,scores={skill_6_2=1},nbt=!{SelectedItem:{tag:{Tags:["skill6"]}}},tag=!skill9r_be2] wooden_axe{display:{Name:'["備用工具槌"]'},Damage:58,AttributeModifiers: [{Slot:"mainhand",AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-3.4,Operation:0,UUID:[I;1498693494,1027158888,1898994005,860320107]}, {Slot:"mainhand",AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:5,Operation:0,UUID:[I;1498693494,1027158888,1898994005,860320107]}]}
title @a[team=pr_red,scores={pr=6}] actionbar ["",{"text":"已集氣","color":"aqua","bold":"true"},{"score":{"name":"red","objective":"skill_6_2"}},{"text":"/300","color":"aqua","bold":"true"}]
title @a[team=pr_blue,scores={pr=6}] actionbar ["",{"text":"已集氣","color":"aqua","bold":"true"},{"score":{"name":"blue","objective":"skill_6_2"}},{"text":"/300","color":"aqua","bold":"true"}]
execute as @a[team=pr_red,scores={skill_6_2=1..}] run scoreboard players set @s skill_6_2 0
execute as @a[team=pr_blue,scores={skill_6_2=1..}] run scoreboard players set @s skill_6_2 0
