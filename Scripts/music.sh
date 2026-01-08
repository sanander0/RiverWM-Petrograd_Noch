#!/bin/sh

# Имена app-id
CAVA_ID="cava"
CMUS_ID="cmus"

# Проверяем, запущен ли cava (как индикатор)
if pgrep -f "foot.*-a $CAVA_ID" >/dev/null; then
    # Закрываем cava и cmus
    pkill -f "foot.*-a $CAVA_ID"
    pkill -f "foot.*-a $CMUS_ID"
else
    # Запускаем cava и cmus
    foot -a $CAVA_ID -e cava &
    foot -a $CMUS_ID -e cmus &
fi
