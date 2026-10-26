#!/bin/bash

# ==============================================================================
# Лабораторна робота №10. Варіант №18
# ==============================================================================

# Персональні дані студента
SURNAME="Repeta"                  
FIRST_NAME="Andrii"                   
GROUP_DATE="CI-405, 26.10.2026"    
EMAIL="andrirepeta067@gmail.com"          

echo "=== [4] Створення дерева каталогів (Варіант 18) ==="
# Структура Варіанта 18: AAA/VARR, AAA/VARS, AAA/VART/GR1, AAA/VART/GR2
mkdir -p "$SURNAME/VARR"
mkdir -p "$SURNAME/VARS"
mkdir -p "$SURNAME/VART/GR1"
mkdir -p "$SURNAME/VART/GR2"
echo "Каталоги успішно створено в папці: $SURNAME"

echo "=== [5] Створення текстових файлів ==="
# 1. Файл з іменем у папці GR1 (вміст: група та дата)
FILE_NAME="$SURNAME/VART/GR1/${FIRST_NAME}.txt"
echo "$GROUP_DATE" > "$FILE_NAME"

# 2. Файл з прізвищем у папці GR2 (вміст: email)
FILE_SURNAME="$SURNAME/VART/GR2/${SURNAME}.txt"
echo "$EMAIL" > "$FILE_SURNAME"
echo "Файли $FILE_NAME та $FILE_SURNAME створено."

echo "=== [6] Копіювання файлів у кореневу папку ==="
cp "$FILE_NAME" "$SURNAME/"
cp "$FILE_SURNAME" "$SURNAME/"
echo "Файли скопійовано в $SURNAME/"

echo "=== [7] Перевірка email регулярним виразом ==="
EMAIL_FILE="$SURNAME/${SURNAME}.txt"
CONTENT=$(cat "$EMAIL_FILE")
# Регулярний вираз для валідації адреси електронної пошти
REGEX="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"

if [[ "$CONTENT" =~ $REGEX ]]; then
    echo "[ОК] Адреса електронної пошти '$CONTENT' є коректною."
else
    echo "[ПОМИЛКА] У файлі міститься некоректний email: '$CONTENT'"
fi

echo "=== [8] Аналіз лог-файлу Apache (Пошук помилок 404) ==="
LOG_FILE="Apache_2.4-PHP_5.5-5.6_queriesa.log"

if [ -f "$LOG_FILE" ]; then
    echo "--- Список запитів із кодом 404 ---"
    grep " 404 " "$LOG_FILE"
    
    COUNT_404=$(grep -c " 404 " "$LOG_FILE")
    echo "---------------------------------"
    echo "Загальна кількість помилок 404: $COUNT_404"
else
    echo "Зауваження: Лог-файл $LOG_FILE відсутній у поточній директорії."
fi
