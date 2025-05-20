# 1. Базовий образ (попередньо pull-нути окремо)
FROM python:3.10.17-bullseye

# 2. Робоча директорія
WORKDIR /app

# 3. Копіюємо залежності та встановлюємо їх
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 4. Копіюємо весь код
COPY . .

EXPOSE 8080

# 5. Команда запуску
CMD ["uvicorn", "spaceship.main:app", "--host=0.0.0.0", "--port=8080"]
