### AT: Player who shot
# Set the position
tp @s @p
tp @s ~ ~1.5 ~
tp @s ^ ^1.5 ^1.75

# Play a spawn sound
playsound minecraft:item.crossbow.shoot master @a[distance=..25] ~ ~ ~ 10

# Remove the spawned tag
tag @s add lasertagBullet
tag @s remove lasertagBulletSpawned