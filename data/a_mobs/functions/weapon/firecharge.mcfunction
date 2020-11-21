tag @a[nbt={Inventory: [{Slot: -106b, id: "minecraft:tipped_arrow", tag: {Enchantments:[{id:"minecraft:flame",lvl:1s}]}}]}] add can_explode_arrow
execute at @e[tag = can_explode_arrow] run tag @e[type=minecraft:arrow, distance=..2, limit=1, nbt={life:0s}] add explode_arrow
execute at @e[nbt={HurtTime:10s,ActiveEffects: [{Ambient: 0b, ShowIcon: 1b, ShowParticles: 1b, Duration: 20, Id: 27b, Amplifier: 50b}]}] run summon minecraft:fireball ~ ~ ~ {ExplosionPower:1,direction:[0.0,-10.0,0.0]}
#execute at @e[tag=!can_explode_arrow, type=!minecraft:item, type=!minecraft:arrow] run execute at @e[tag=explode_arrow, distance=..2] run summon minecraft:fireball ~ ~ ~ {ExplosionPower:1,direction:[0.0,-10.0,0.0]}
#execute at @e[tag=!can_explode_arrow, type=!minecraft:item, type=!minecraft:arrow] run execute as @e[tag=explode_arrow, distance=..2] run kill @s
execute at @e[tag=explode_arrow, nbt={inGround:1b}] run summon minecraft:fireball ~ ~ ~ {ExplosionPower:1,direction:[0.0,-10.0,0.0]}
execute as @e[tag=explode_arrow, nbt={inGround:1b}] run kill @s
tag @a remove can_explode_arrow