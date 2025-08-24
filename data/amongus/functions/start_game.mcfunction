# Назначение ролей
execute as @r[limit=2,tag=!impostor] run tag @s add impostor
execute as @a[tag=!impostor] run tag @s add crewmate

# Сброс статистик
scoreboard players set @a au_tasks 0
scoreboard players set @a au_votes 0
scoreboard players set @a au_alive 1

# Выдача предметов
give @a[tag=crewmate] compass{display:{Name:'{"text":"Карта","color":"blue"}'}}
give @a[tag=impostor] netherite_sword{display:{Name:'{"text":"Убить","color":"red"}'}}

tellraw @a[tag=impostor] {"text":"Вы ПРЕДАТЕЛЬ!","color":"red","bold":true}
tellraw @a[tag=crewmate] {"text":"Вы ЧЛЕН ЭКИПАЖА!","color":"blue","bold":true}