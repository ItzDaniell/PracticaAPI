# Imagen base
FROM python:3.11-slim

# Evitar problemas de encoding
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Crear directorio de trabajo
WORKDIR /app

# Copiar dependencias
COPY requirements.txt .

RUN pip install --upgrade pip && pip install -r requirements.txt

# Copiar solo la carpeta src al contenedor
COPY src/ .

# Exponer puerto
EXPOSE 8000

# Comando de inicio
CMD ["gunicorn", "config.wsgi:application", "--bind", "0.0.0.0:8000"]