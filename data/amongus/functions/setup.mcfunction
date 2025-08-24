# Настройка игры
scoreboard objectives add au_tasks dummy "Задания"
scoreboard objectives add au_votes dummy "Голоса"
scoreboard objectives add au_alive dummy "Живые"
scoreboard objectives add au_role dummy "Роль"
scoreboard objectives add au_timer dummy "Таймер"

# Теги для ролей
tag @a remove impostor
tag @a remove crewmate
tag @a remove dead

# Настройки по умолчанию
scoreboard players set #max_tasks au_tasks 5
scoreboard players set #impostors au_role 2