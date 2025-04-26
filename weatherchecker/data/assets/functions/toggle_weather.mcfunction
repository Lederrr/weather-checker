# Переключаем состояние (0 ↔ 1)
execute as @a[scores={weather_trigger=1..}] run {
    scoreboard players operation @s weather_toggle = @s weather_trigger
    scoreboard players set @s weather_trigger 0  # Сбрасываем триггер
    tellraw @s ["", {"text": "[Погода] ", "color": "gold"}, {"text": "Автоочистка: ", "color": "gray"}, {"text": "<вкл>", "color": "green", "hoverEvent": {"action": "show_text", "contents": "Кликните для выключения"}, "clickEvent": {"action": "run_command", "value": "/trigger weather_toggle set 0"}}}] 
}

execute as @a[scores={weather_trigger=1..}] run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1