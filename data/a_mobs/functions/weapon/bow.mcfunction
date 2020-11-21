tag @a[nbt={SelectedItem:{id:"minecraft:bow",Count:1b,tag:{display:{Lore:['{"text":"Neurotoxin","bold":true}','{"text":"Arrows will apply Weakness and Slowness to hit entities","color":"gray"}']}}}}] add can_slow
tag @a[nbt={SelectedItem: {id: "minecraft:bow", Count: 1b, tag: {display: {Lore: ['{"bold":true,"text":"Neurotoxin"}', '{"color":"gray","text":"Arrows will apply Weakness and Slowness to hit entities"}']}}}}] add can_slow
execute at @e[tag = can_slow] run data modify entity @e[type=minecraft:arrow, distance=..2, limit=1, nbt={life:0s}] CustomPotionEffects set value [{Id:2b,Amplifier:0b,Duration:200},{Id:18b,Amplifier:0b,Duration:200}]
execute at @e[tag = can_slow] run data modify entity @e[type=minecraft:arrow, distance=..2, limit=1, nbt={life:0s}] pickup set value 0
execute at @e[tag = can_slow] run data modify entity @e[type=minecraft:arrow, distance=..2, limit=1, nbt={life:0s}] life set value 20
tag @a remove can_slow