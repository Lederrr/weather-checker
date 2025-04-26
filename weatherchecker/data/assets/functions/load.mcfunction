# Создаем scoreboard для переключателя
scoreboard objectives add weather_toggle dummy
scoreboard objectives add weather_trigger trigger  # Для /trigger

# Разрешаем игрокам использовать триггер
scoreboard players enable @a weather_trigger

tellraw @a ["", {"text": "Используй ", "color": "gray"}, {"text": "/trigger weather_toggle", "color": "yellow", "clickEvent": {"action": "suggest_command", "value": "/trigger weather_toggle set 1"}, "hoverEvent": {"action": "show_text", "contents": "Нажми, чтобы вставить команду!"}}, {"text": " для управления погодой", "color": "gray"}]

function mydatapack:clear_weather