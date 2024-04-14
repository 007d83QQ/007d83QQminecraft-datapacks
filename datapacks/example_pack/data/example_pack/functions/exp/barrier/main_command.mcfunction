#by 007d83QQ


summon marker ~ ~ ~ {Tags:[exp_a_pos]}
summon marker ^ ^ ^5 {Tags:[exp_b_pos]}
summon marker ~-5 ~-5 ~-5 {Tags:[exp_pos_m]}
function example_pack:exp/barrier/x
function example_pack:exp/barrier/x
function example_pack:exp/barrier/x
function example_pack:exp/barrier/x
function example_pack:exp/barrier/x
function example_pack:exp/barrier/x
function example_pack:exp/barrier/x
function example_pack:exp/barrier/x
function example_pack:exp/barrier/x
function example_pack:exp/barrier/x
function example_pack:exp/barrier/x
kill @e[tag=exp_pos_m]
execute at @e[tag=exp_a_pos] run kill @e[tag=exp_pos_s,distance=..4]
execute at @e[tag=exp_a_pos] run kill @e[tag=exp_pos_s,distance=6..]
execute at @e[tag=exp_b_pos] run kill @e[tag=exp_pos_s,distance=6..]
execute at @e[tag=exp_pos_s] if block ~ ~ ~ air run setblock ~ ~ ~ glass
kill @e[tag=exp_a_pos]
kill @e[tag=exp_b_pos]

