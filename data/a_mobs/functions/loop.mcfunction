scoreboard players add @a mob_timer 8

execute at @a[scores={mob_timer = 2400}, limit = 7] run tag @e[type=minecraft:zombie, distance = ..100, limit = 1] add a_zombie
execute at @e[tag = a_zombie] run function a_mobs:summon/zombie
kill @e[tag = a_zombie]

execute at @a[scores={mob_timer = 2400}, limit = 7] run tag @e[type=minecraft:blaze, distance = ..50, limit = 1] add a_blaze
execute at @e[tag = a_blaze] run function a_mobs:summon/blaze
execute at @e[type=minecraft:item, nbt={Item:{id:"minecraft:blaze_rod",Count:1b}}] run kill @e[tag=up]
kill @e[tag = a_blaze]

execute at @a[scores={mob_timer = 4800}, limit = 7] run tag @e[type=minecraft:skeleton, distance = ..100, limit = 1] add a_skeleton
execute at @e[tag = a_skeleton] run function a_mobs:summon/skeleton
kill @e[tag = a_skeleton]

execute at @a[scores={mob_timer = 4800}, limit = 5] run tag @e[type=minecraft:ghast, distance = ..50, limit = 1] add a_ghast
execute at @e[tag = a_ghast] run function a_mobs:summon/ghast
execute at @e[type=minecraft:item, nbt={Item:{id:"minecraft:ghast_tear",Count:1b}}] run kill @e[tag=up, distance = ..10]
kill @e[tag = a_ghast]

execute at @a[scores={mob_timer = 7200}, limit = 5] run tag @e[type=minecraft:creeper, distance = ..100, limit = 1] add a_creeper
execute at @e[tag = a_creeper] run function a_mobs:summon/creeper
kill @e[tag = a_creeper]



execute at @a[scores={mob_timer = 7200}, limit = 5] run tag @e[type=minecraft:enderman, distance = ..100, limit = 1] add a_enderman
execute at @e[tag = a_enderman] run function a_mobs:summon/enderman
kill @e[tag = a_enderman]

scoreboard players set @a[scores={mob_timer = 7200..}] mob_timer 0