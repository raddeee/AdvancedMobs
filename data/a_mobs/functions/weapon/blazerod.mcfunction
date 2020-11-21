tag @a[nbt={Inventory: [{Slot: -106b, id: "minecraft:blaze_rod", tag: {display: {Lore: ['{"text":"Flame","bold":true}', '{"text":"When in off-hand, you can shoot Flaming Arrows","color":"gray"}']}}}]}] add can_flame
tag @a[nbt={Inventory: [{Slot: -106b, id: "minecraft:blaze_rod", tag: {display: {Lore: ['{"bold":true,"text":"Flame"}', '{"color":"gray","text":"When in off-hand, you can shoot Flaming Arrows"}']}}}]}] add can_flame
execute at @e[tag = can_flame] run data modify entity @e[type=minecraft:arrow, distance=..2, limit=1, nbt={life:0s}] Fire set value 1200
tag @a remove can_flame