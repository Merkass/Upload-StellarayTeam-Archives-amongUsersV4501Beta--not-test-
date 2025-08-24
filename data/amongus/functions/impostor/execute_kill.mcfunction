tag @s add dead
scoreboard players set @s au_alive 0
gamemode spectator @s
tellraw @a {"text":"Игрок убит!","color":"red"}

# Проверка победы предателей
execute store result score #alive_crew au_alive run execute as @a[tag=crewmate,tag=!dead] run scoreboard players get @s au_alive
execute store result score #alive_imp au_alive run execute as @a[tag=impostor,tag=!dead] run scoreboard players get @s au_alive
execute if score #alive_crew au_alive <= #alive_imp au_alive run function amongus:voting/impostor_win