#by 007d83QQ


execute as @e[tag=exp_end_mo] at @s run execute if entity @e[tag=exp_end_posm,distance=..10] if entity @s[x=912,dx=98,y=56,dy=33,z=860,dz=96] run setblock ~ ~ ~ air
execute as @e[tag=exp_end_mo] at @s run tp @s ~1 ~ ~
