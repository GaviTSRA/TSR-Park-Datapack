execute as @e[type=minecraft:armor_stand, tag=tp] at @s if entity @a[distance=..20] run tp @s ~ ~ ~ ~25 ~
execute as @e[type=minecraft:armor_stand, tag=tp] at @s run particle portal ^1 ^ ^-.2 0 0 0 0.1 30 force
execute as @e[type=minecraft:armor_stand, tag=tp] at @s run particle minecraft:end_rod ~ ~1 ~ 0 0.5 0 0 1 force
execute as @e[type=minecraft:armor_stand, tag=tp] at @s run particle minecraft:totem_of_undying ^1 ^ ^-.25 0 0 0 0 10 force

execute as @e[type=minecraft:armor_stand, tag=tp] at @s if entity @a[distance=..20] run tp @s ~ ~ ~ ~25 ~
execute as @e[type=minecraft:armor_stand, tag=tp] at @s run particle portal ^1 ^ ^-.2 0 0 0 0.1 30 force
execute as @e[type=minecraft:armor_stand, tag=tp] at @s run particle minecraft:end_rod ~ ~1 ~ 0 0.5 0 0 1 force
execute as @e[type=minecraft:armor_stand, tag=tp] at @s run particle minecraft:totem_of_undying ^1 ^ ^-.25 0 0 0 0 10 force