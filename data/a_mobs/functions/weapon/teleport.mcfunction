tag @a[nbt={Inventory: [{Slot: 105b, id: "minecraft:iron_helmet", Count: 1b, tag: {display: {Lore: ['{"text":"Teleport","bold":true}', '{"text":"Holding Shift will teleport you to  a random location","color":"gray"}']}}}]}] add teleport_helmet
scoreboard players add @a teleport 1
execute at @a[tag=teleport_helmet, scores={sneak=1,teleport=100..}] run particle minecraft:portal ~ ~ ~ 0.5 0.5 0.5 1 500 force @a
execute if block ~4 ~1 ~ air at @a[tag=teleport_helmet, scores={sneak=1..,teleport=100}] run tp @p ~4 ~1 ~
execute if block ~-4 ~1 ~ air at @a[tag=teleport_helmet, scores={sneak=1..,teleport=101}] run tp @p ~-4 ~1 ~
execute if block ~ ~1 ~4 air at @a[tag=teleport_helmet, scores={sneak=1..,teleport=102}] run tp @p ~ ~1 ~4
execute if block ~ ~1 ~-4 air at @a[tag=teleport_helmet, scores={sneak=1..,teleport=103}] run tp @p ~ ~1 ~-4
execute if block ~4 ~1 ~4 air at @a[tag=teleport_helmet, scores={sneak=1..,teleport=104}] run tp @p ~4 ~1 ~4
execute if block ~4 ~1 ~-4 air at @a[tag=teleport_helmet, scores={sneak=1..,teleport=105}] run tp @p ~4 ~1 ~-4
execute if block ~-4 ~1 ~4 air at @a[tag=teleport_helmet, scores={sneak=1..,teleport=106}] run tp @p ~-4 ~1 ~4
execute if block ~-4 ~1 ~-4 air at @a[tag=teleport_helmet, scores={sneak=1..,teleport=107}] run tp @p ~-4 ~1 ~-4
execute if block ~5 ~1 ~ air at @a[tag=teleport_helmet, scores={sneak=1..,teleport=108}] run tp @p ~5 ~1 ~
execute if block ~-5 ~1 ~ air at @a[tag=teleport_helmet, scores={sneak=1..,teleport=109}] run tp @p ~-5 ~1 ~
execute if block ~ ~1 ~5 air at @a[tag=teleport_helmet, scores={sneak=1..,teleport=110}] run tp @p ~ ~1 ~5
execute if block ~ ~1 ~-5 air at @a[tag=teleport_helmet, scores={sneak=1..,teleport=111}] run tp @p ~ ~1 ~-5
playsound minecraft:entity.enderman.teleport player @a[tag=teleport_helmet, scores={sneak=1..,teleport=100..}] ~ ~ ~ 50 1
scoreboard players set @a[tag=teleport_helmet, scores={sneak=1,teleport=100..}] teleport 0
scoreboard players set @a[scores={teleport=111}] teleport 100
scoreboard players set @a[tag = teleport_helmet] sneak 0
tag @a remove teleport_helmet