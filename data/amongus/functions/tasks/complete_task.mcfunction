scoreboard players add @s au_tasks 1
tellraw @s {"text":"Задание выполнено!","color":"green"}
playsound entity.experience_orb.pickup master @s

# Проверка победы экипажа
execute if score @s au_tasks >= #max_tasks au_tasks run tag @s add task_complete
execute if entity @a[tag=crewmate,tag=task_complete] unless entity @a[tag=crewmate,tag=!task_complete] run function amongus:voting/crew_win