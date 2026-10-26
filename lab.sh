#!/usr/bin/env bash
# Лабораторна: дерево каталогів, файли, копіювання, перевірка email, пошук 404
set -euo pipefail
cd "$(dirname "$0")"
source ./config.env

ROOT="$SURNAME"

# 9. Дерево: AAA -> DEE/GR1, SEE, SSS/GR2
mkdir -p "$ROOT/VARR"
mkdir -p "$ROOT/VARS"
mkdir -p "$ROOT/VART/GR1"
mkdir -p "$ROOT/VART/GR2"

FILE_NAME="$ROOT/VART/GR1/${FIRST_NAME}.txt"
FILE_SURNAME="$ROOT/VART/GR2/${SURNAME}.txt"

FILE_NAME="$SURNAME/VART/GR1/${FIRST_NAME}.txt"
echo "$GROUP_DATE" > "$FILE_NAME"

# 2. Файл з прізвищем у папці GR2 (вміст: email)
FILE_SURNAME="$SURNAME/VART/GR2/${SURNAME}.txt"
echo "$EMAIL" > "$FILE_SURNAME"
echo "Файли $FILE_NAME та $FILE_SURNAME створено."

# 10. Копіювання файлів у кореневий каталог (AAA)
cp "$FILE_NAME" "$ROOT/"
cp "$FILE_SURNAME" "$ROOT/"
# 11. Перевірка email регулярним виразом
EMAIL_FILE="$ROOT/${SURNAME}.txt"
EMAIL_CONTENT=$(cat "$EMAIL_FILE")
REGEX="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"

if [[ "$EMAIL_CONTENT" =~ $REGEX ]]; then
    echo "[ОК] Адреса електронної пошти '$EMAIL_CONTENT' є коректною."
else
    echo "[ПОМИЛКА] Адреса електронної пошти '$EMAIL_CONTENT' некоректна!"
fi
# 13. Помилки 404 в Apache-логах
LOG_FILE="${LOG_FILE:-eguru1.tk.te.ua_pluginfile.php_418_mod_resource_content_1_Apache_2.4-PHP_5.5-5.6_queriesa.log}"

if [ -f "$LOG_FILE" ]; then
    echo "--- Список запитів із кодом 404 ---"
    grep " 404 " "$LOG_FILE" || true
    
    COUNT_404=$(grep -c " 404 " "$LOG_FILE" || true)
    echo "---------------------------------"
    echo "Загальна кількість помилок 404: $COUNT_404"
else
    echo "Лог-файл '$LOG_FILE' не знайдено у поточній директорії."
fi
