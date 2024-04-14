#by007d83QQ
#exp moutain



execute at @e[tag=ex_mo1] run summon minecraft:marker ~ ~ ~ {Tags:[ex_mo2,ex_mo3]}
execute as @e[tag=ex_mo1] at @s run spreadplayers ~ ~ 6 12 false @e[tag=ex_mo3]
tag @e[tag=ex_mo1] add ex_mo4
tag @e[tag=ex_mo1] remove ex_mo3
tag @e[tag=ex_mo1] remove ex_mo1
tag @e[tag=ex_mo2] add ex_mo1
tag @e[tag=ex_mo2] remove ex_mo2
scoreboard players remove count expd 1
execute if score count expd matches 0.. run function example_pack:exp/exp_return


