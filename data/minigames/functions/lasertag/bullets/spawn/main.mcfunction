### AT: Player who shot
# Spawn the armorstand and reset the rightclick and shoot cooldown scoreboards
summon minecraft:armor_stand ~ ~ ~ {Tags:[lasertagBulletSpawned], Invisible:1, NoGravity:1b}
scoreboard players set @s lasertagCooldown 20
scoreboard players set @s rc 0

execute as @e[tag=lasertagBulletSpawned] at @p run function minigames:lasertag/bullets/spawn/update