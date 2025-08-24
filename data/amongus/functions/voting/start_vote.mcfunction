tellraw @a {"text":"=== ГОЛОСОВАНИЕ ===","color":"yellow","bold":true}
tellraw @a {"text":"Используйте /trigger au_votes для голосования","color":"gray"}
scoreboard players enable @a au_votes
scoreboard players set #vote_time au_timer 600