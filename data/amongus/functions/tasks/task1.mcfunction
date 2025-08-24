# Задание: собрать 10 железа
execute as @s[scores={au_tasks=0}] if entity @s[nbt={Inventory:[{id:"minecraft:iron_ingot",Count:10b}]}] run function amongus:tasks/complete_task