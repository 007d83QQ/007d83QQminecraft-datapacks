#by 007d83QQ
#cross_st

#1640 129 4
#1504 0 134




gamemode adventure @a[distance=..30]
clear @a[distance=..30]
item replace entity @a[distance=..30] armor.chest with minecraft:elytra{Unbreakable:1}
give @a[distance=..30] minecraft:crossbow{display:{Lore:['{"color":"gray","text":"強射擊","italic":"gray"}'],Name:'{"text":"殺手核彈","italic":"false"}'},Enchantments:[{id:"piercing",lvl:101},{id:"quick_charge",lvl:3}],HideFlags:5,Unbreakable:1}
item replace entity @a[team=cross_red,distance=..30] armor.feet with minecraft:leather_boots{display:{color:16711680},Enchantments:[{id:"binding_curse",lvl:1}]}
item replace entity @a[team=cross_red,distance=..30] armor.head with minecraft:leather_helmet{display:{color:16711680},Enchantments:[{id:"binding_curse",lvl:1}]}
item replace entity @a[team=cross_red,distance=..30] armor.legs with minecraft:leather_leggings{display:{color:16711680},Enchantments:[{id:"binding_curse",lvl:1}]}
item replace entity @a[team=cross_blue,distance=..30] armor.feet with minecraft:leather_boots{display:{color:3949738},Enchantments:[{id:"binding_curse",lvl:1}]}
item replace entity @a[team=cross_blue,distance=..30] armor.head with minecraft:leather_helmet{display:{color:3949738},Enchantments:[{id:"binding_curse",lvl:1}]}
item replace entity @a[team=cross_blue,distance=..30] armor.legs with minecraft:leather_leggings{display:{color:3949738},Enchantments:[{id:"binding_curse",lvl:1}]}
setblock 509 11 12 air
spawnpoint @a[team=cross_red,distance=..30] 1508 12 8
spawnpoint @a[team=cross_blue,distance=..30] 1636 13 130
scoreboard players set @a[distance=..30] cross_dead 0
scoreboard players set timer0 cross_dead 0
tp @a[team=cross_blue,distance=..30] 1636 13 130
summon marker 1640 64 69 {Tags:[cross_border1,cross_border]}
summon marker 1504 64 69 {Tags:[cross_border2,cross_border]}
summon marker 1554 129 69 {Tags:[cross_border3,cross_border]}
summon marker 1554 0 69 {Tags:[cross_border4,cross_border]}
summon marker 1554 64 134 {Tags:[cross_border5,cross_border]}
summon marker 1554 64 4 {Tags:[cross_border6,cross_border]}
setblock 1574 130 74 redstone_block
tp @a[team=cross_red,distance=..30] 1508 12 8





