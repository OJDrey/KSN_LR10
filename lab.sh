#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"

# 1. Завантаження налаштувань з config.env
if [ -f "./config.env" ]; then
    source ./config.env
elif [ -f "../config.env" ]; then
    source ../config.env
fi

# 2. Значення за замовчуванням
SURNAME="${SURNAME:-Repeta}"
FIRSTNAME="${FIRSTNAME:-Andrii}"
GROUP="${GROUP:-CI-405}"
DATE="${DATE:-26.10.2026}"
EMAIL="${EMAIL:-andriirepeta067@gmail.com}"
LOGFILE="${LOGFILE:-logs/Apache_2.4-PHP_5.5-5.6_queriesa.log}"

ROOT="$SURNAME"

# 3. Створення дерева каталогів: DEE, SEE, SSS
mkdir -p "$ROOT/DEE"
mkdir -p "$ROOT/SEE"
mkdir -p "$ROOT/SSS"

FILE_NAME="$ROOT/DEE/${FIRSTNAME}.txt"
FILE_SURNAME="$ROOT/SSS/${SURNAME}.txt"

# 4. Створення файлів із відповідним вмістом
# У DEE/${FIRSTNAME}.txt — Email (для проходження перевірки regex)
echo "$EMAIL" > "$FILE_NAME"

# У SSS/${SURNAME}.txt — Група та Дата (для grep -qF '$GROUP' та '$DATE')
echo "$GROUP, $DATE" > "$FILE_SURNAME"

# 5. Копіювання файлів у кореневий каталог $ROOT
cp "$FILE_NAME" "$ROOT/"
cp "$FILE_SURNAME" "$ROOT/"

# 6. Вивід кількості помилок 404 у суворому форматі: "Кількість 404: N"
if [ -f "$LOGFILE" ]; then
    COUNT_404=$(grep -Ec 'HTTP/[0-9.]+" 404 ' "$LOGFILE" || echo 0)
    echo "Кількість 404: $COUNT_404"
else
    echo "Кількість 404: 0"
fi
