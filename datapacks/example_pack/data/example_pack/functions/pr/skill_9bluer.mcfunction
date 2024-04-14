#by 007d83QQ



tag @s remove skill9b_be2
tag @s remove skillb_be
execute unless score @s pr matches 9 run item replace entity @s weapon.offhand with shield{Unbreakable:1}
execute if score @s pr matches 1 run give @s wooden_hoe{AttributeModifiers: [{Slot:"mainhand",AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.4,Operation:0,UUID:[I;1498693494,1027158888,1898994005,860320107]}, {Slot:"mainhand",AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3,Operation:0,UUID:[I;1498693494,1027158888,1898994005,860320107]}],display:{Name:'["法師魔杖"]'},Unbreakable:1,Enchantments:[{id:"fire_aspect",lvl:2}]}
execute if score @s pr matches 2 run give @s golden_sword{AttributeModifiers: [{Slot:"mainhand",AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.4,Operation:0,UUID:[I;1498693494,1027158888,1898994005,860320107]}, {Slot:"mainhand",AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:5,Operation:0,UUID:[I;1498693494,1027158888,1898994005,860320107]}],display:{Name:'["輔助退刃"]'},Unbreakable:1,Enchantments:[{id:"knockback",lvl:1}]}
execute if score @s pr matches 3 run give @s diamond_axe{AttributeModifiers: [{Slot:"mainhand",AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.4,Operation:0,UUID:[I;1498693494,1027158888,1898994005,860320107]},{Slot:"mainhand",AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:8,Operation:0,UUID:[I;1498693494,1027158888,1898994005,860320107]}],display:{Name:'["狂戰士之斧"]'},Unbreakable:1}
execute if score @s pr matches 4 run give @s iron_sword{AttributeModifiers: [{Slot:"mainhand",AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-1,Operation:0,UUID:[I;1498693494,1027158888,1898994005,860320107]}, {Slot:"mainhand",AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;1498693494,1027158888,1898994005,860320107]}],display:{Name:'["刺客短刃"]'},Unbreakable:1}
execute if score @s pr matches 5 run give @s bow{Enchantments:[{id:"infinity",lvl:1},{id:"power",lvl:3}],Unbreakable:1}
execute if score @s pr matches 7 run give @s trident{AttributeModifiers: [{Slot:"mainhand",AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.9,Operation:0,UUID:[I;1498693494,1027158888,1898994005,860320107]}, {Slot:"mainhand",AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;1498693494,1027158888,1898994005,860320107]}],display:{Name:'["冰術士之戟"]'},Unbreakable:1,Enchantments:[{id:"loyalty",lvl:2}]}
execute if score @s pr matches 8 run give @s crossbow{display:{Name:'{"text":"一次函式產生器","italic":"false"}'},Enchantments:[{id:"quick_charge",lvl:5},{id:"piercing",lvl:96}]}
execute if score @s pr matches 10 run give @s bow{Unbreakable:1b,Enchantments:[{id:"infinity",lvl:1},{id:"punch",lvl:1}]}



execute if score @s pr matches 1 run clear @a[team=pr_blue,scores={skill_9=405}] stone_hoe
execute if score @s pr matches 2 run clear @a[team=pr_blue,scores={skill_9=405}] golden_sword
execute if score @s pr matches 3 run clear @a[team=pr_blue,scores={skill_9=405}] diamond_axe
execute if score @s pr matches 4 run clear @a[team=pr_blue,scores={skill_9=405}] iron_sword
execute if score @s pr matches 5 run clear @a[team=pr_blue,scores={skill_9=405}] bow
execute if score @s pr matches 6 run clear @a[team=pr_blue,scores={skill_9=405}] wooden_axe
execute if score @s pr matches 7 run clear @a[team=pr_blue,scores={skill_9=405}] trident
execute if score @s pr matches 8 run clear @a[team=pr_blue,scores={skill_9=405}] crossbow
execute if score @s pr matches 9 run clear @a[team=pr_blue,scores={skill_9=405}] diamond
execute if score @s pr matches 10 run clear @a[team=pr_blue,scores={skill_9=405}] bow
clear @a[team=pr_blue,scores={skill_9=405}] shield