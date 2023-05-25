# Базовый образ
FROM python:3.10

# Установка зависимостей
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Копирование исходного кода
COPY . .

# Определение переменных среды
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

# Открытие порта
EXPOSE 5000

# Запуск приложения
CMD ["flask", "run"]
