# Проверяем, включен ли режим (score = 1)
execute as @a[scores={weather_toggle=1}] run {
    execute if predicate minecraft:weather_check/raining run weather clear 0
    execute if predicate minecraft:weather_check/thundering run weather clear 0
}

# Запускаем функцию снова через 10 секунд (200 тиков)
schedule function weatherchecker:clear_weather 200t