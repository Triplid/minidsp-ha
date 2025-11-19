ARG BUILD_FROM=ghcr.io/home-assistant/amd64-base:3.19
# или для arm: ghcr.io/home-assistant/aarch64-base:3.19
FROM ${BUILD_FROM}

# Установка зависимостей
RUN apk add --no-cache python3 py3-pip py3-wheel bash

# Виртуальное окружение
RUN python3 -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"

# Зависимости
COPY requirements.txt /tmp/
RUN pip install --no-cache-dir -r /tmp/requirements.txt

# Копируем приложение
COPY api.py /app/api.py
WORKDIR /app

# Копируем всю структуру s6 (обязательно!)
COPY rootfs/ /

EXPOSE 8080

# ЭТО САМОЕ ВАЖНОЕ — НЕ ТРОГАЙ!
# s6-overlay сам найдёт /etc/cont-init.d и /etc/services.d