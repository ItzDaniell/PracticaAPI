# Imagen base
FROM python:3.11-slim

# Evitar problemas de encoding
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Crear directorio de la app
WORKDIR /app

# Instalar dependencias
COPY requirements.txt .
RUN pip install --upgrade pip && pip install -r requirements.txt

# Copiar el proyecto
COPY . .

# Puerto (opcional)
EXPOSE 8000

# Comando por defecto (lo puedes sobreescribir en docker-compose)
CMD ["gunicorn", "config.wsgi:application", "--bind", "0.0.0.0:8000"]