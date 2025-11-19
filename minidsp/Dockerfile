ARG BUILD_FROM=ghcr.io/home-assistant/aarch64-base:3.19  # Для HA Green (aarch64)
FROM ${BUILD_FROM}

# Устанавливаем базовые пакеты (python3, pip, venv)
RUN apk add --no-cache python3 py3-pip py3-virtualenv

# Создаём venv и активируем его
RUN python3 -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"

# Устанавливаем зависимости в venv (теперь pip не жалуется!)
RUN pip install --no-cache-dir flask gunicorn

# Копируем код
COPY api.py /app/api.py
WORKDIR /app

# Копируем структуру для s6 (services.d для запуска)
COPY rootfs/ /

EXPOSE 8080
