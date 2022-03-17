execute as @a[scores={rc=1..,lasertagCooldown=..1},nbt={SelectedItem:{"id": "minecraft:carrot_on_a_stick", tag:{lasergun:1}}}] at @s run function minigames:lasertag/bullets/spawn/main

execute as @e[tag=lasertagBullet] at @s run function minigames:lasertag/bullets/update/main

# Update player shoot cooldowns
execute as @a[scores={lasertagCooldown=1..}] run scoreboard players remove @s lasertagCooldown 1