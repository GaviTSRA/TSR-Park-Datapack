# Update the cooldowns
execute as @a[scores={lasertagCooldown=1..}] run scoreboard players remove @s lasertagCooldown 1

# Spawn the armorstand and reset the rc scoreboard
execute as @a[scores={rc=1..,lasertagCooldown=..1},nbt={SelectedItem:{"id": "minecraft:carrot_on_a_stick", tag:{lasergun:1}}}] at @s run summon minecraft:armor_stand ~ ~2 ~ {Tags:[lasertagBulletSpawned], Invisible:1}
execute as @a[scores={rc=1..,lasertagCooldown=..1},nbt={SelectedItem:{"id": "minecraft:carrot_on_a_stick",tag:{lasergun:1}}}] run scoreboard players set @s lasertagCooldown 20
execute as @a[scores={rc=1..},nbt={SelectedItem:{"id": "minecraft:carrot_on_a_stick",tag:{lasergun:1}}}] run scoreboard players set @s rc 0

# Set the position
execute as @e[tag=lasertagBulletSpawned] at @s run tp @s @p
execute as @e[tag=lasertagBulletSpawned] at @s run tp @s ~ ~1.5 ~
execute as @e[tag=lasertagBulletSpawned] at @s run tp @s ^ ^ ^1.75

# Play a spawn sound
execute as @e[tag=lasertagBulletSpawned] at @s run playsound minecraft:item.crossbow.shoot master @a[distance=..25] ~ ~ ~ 10

# Remove the spawned tag
execute as @e[tag=lasertagBulletSpawned] run tag @s add lasertagBullet
execute as @e[tag=lasertagBulletSpawned] run tag @s remove lasertagBulletSpawned
