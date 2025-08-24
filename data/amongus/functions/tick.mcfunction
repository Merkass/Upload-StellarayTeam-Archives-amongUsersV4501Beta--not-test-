# Основной игровой цикл
execute as @a[tag=crewmate,tag=!dead] run function amongus:tasks/task1
execute as @a[tag=impostor] run function amongus:impostor/kill

# Таймер голосования
execute if score #vote_time au_timer matches 1.. run scoreboard players remove #vote_time au_timer 1
execute if score #vote_time au_timer matches 0 run function amongus:voting/end_vote