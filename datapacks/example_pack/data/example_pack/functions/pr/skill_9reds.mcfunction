#by 007d83QQ


tag @s add skill9r_be2
clear @s shield
execute if score @s pr matches 1 run clear @s wooden_hoe
execute if score @s pr matches 2 run clear @s golden_sword
execute if score @s pr matches 3 run clear @s diamond_axe
execute if score @s pr matches 4 run clear @s iron_sword
execute if score @s pr matches 5 run clear @s bow
execute if score @s pr matches 7 run clear @s trident
execute if score @s pr matches 8 run clear @s crossbow
execute if score @s pr matches 6 run clear @s wooden_axe
execute if score @s pr matches 9 run effect give @s weakness 20 0
execute if score @s pr matches 10 run clear @s bow

item replace entity @a[team=pr_red,scores={skill_9=5}] weapon.offhand with shield{Unbreakable:1}
execute if score @s pr matches 1 run give @a[team=pr_red,scores={skill_9=5}] stone_hoe{display:{Name:'{"text":"失去法力的魔杖","italic":"false"}'},Enchantments:[{id:"fire_aspect",lvl:2,}],AttributeModifiers:[{Slot:"mainhand",AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.4,Operation:0,UUID:[I;1498693494,1027158888,1898994005,860320107]}, {Slot:"mainhand",AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3,Operation:0,UUID:[I;1498693494,1027158888,1898994005,860320107]}]}
execute if score @s pr matches 2 run give @a[team=pr_red,scores={skill_9=5}] golden_sword{AttributeModifiers: [{Slot:"mainhand",AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.4,Operation:0,UUID:[I;1498693494,1027158888,1898994005,860320107]}, {Slot:"mainhand",AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:5,Operation:0,UUID:[I;1498693494,1027158888,1898994005,860320107]}],display:{Name:'["輔助退刃"]'},Unbreakable:1,Enchantments:[{id:"knockback",lvl:1}]}
execute if score @s pr matches 3 run give @a[team=pr_red,scores={skill_9=5}] diamond_axe{AttributeModifiers: [{Slot:"mainhand",AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.4,Operation:0,UUID:[I;1498693494,1027158888,1898994005,860320107]},{Slot:"mainhand",AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:8,Operation:0,UUID:[I;1498693494,1027158888,1898994005,860320107]}],display:{Name:'["狂戰士之斧"]'},Unbreakable:1}
execute if score @s pr matches 4 run give @a[team=pr_red,scores={skill_9=5}] iron_sword{AttributeModifiers: [{Slot:"mainhand",AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-1,Operation:0,UUID:[I;1498693494,1027158888,1898994005,860320107]}, {Slot:"mainhand",AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;1498693494,1027158888,1898994005,860320107]}],display:{Name:'["刺客短刃"]'},Unbreakable:1}
execute if score @s pr matches 5 run give @a[team=pr_red,scores={skill_9=5}] bow{Enchantments:[{id:"infinity",lvl:1},{id:"power",lvl:3}],Unbreakable:1}
execute if score @s pr matches 6 run give @a[team=pr_red,scores={skill_9=5}] wooden_axe{display:{Name:'["備用工具槌"]'},Damage:58,AttributeModifiers: [{Slot:"mainhand",AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-3.4,Operation:0,UUID:[I;1498693494,1027158888,1898994005,860320107]}, {Slot:"mainhand",AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:5,Operation:0,UUID:[I;1498693494,1027158888,1898994005,860320107]}]}
execute if score @s pr matches 7 run give @a[team=pr_red,scores={skill_9=5}] trident{AttributeModifiers: [{Slot:"mainhand",AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.9,Operation:0,UUID:[I;1498693494,1027158888,1898994005,860320107]}, {Slot:"mainhand",AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;1498693494,1027158888,1898994005,860320107]}],display:{Name:'["冰術士之戟"]'},Unbreakable:1,Enchantments:[{id:"loyalty",lvl:2}]}
execute if score @s pr matches 8 run give @a[team=pr_red,scores={skill_9=5}] crossbow{display:{Name:'{"text":"一次函式產生器","italic":"false"}'},Enchantments:[{id:"quick_charge",lvl:5},{id:"piercing",lvl:97}]}
execute if score @s pr matches 9 run give @a[team=pr_red,scores={skill_9=5}] diamond{display:{Name:'{"text":"贓物．．．但又被偷了一次","italic":"false"}'},AttributeModifiers: [{Slot:"mainhand",AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.0,Operation:0,UUID:[I;1498693494,1027158888,1898994005,860320107]}, {Slot:"mainhand",AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:4,Operation:0,UUID:[I;1498693494,1027158888,1898994005,860320107]}]}
execute if score @s pr matches 10 run give @a[team=pr_red,scores={skill_9=5}] bow{Unbreakable:1b,Enchantments:[{id:"infinity",lvl:1},{id:"punch",lvl:1}]}