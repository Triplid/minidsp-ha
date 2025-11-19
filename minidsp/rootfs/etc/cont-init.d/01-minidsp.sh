#!/command/with-contenv bash
set -e

echo "[miniDSP] Preparing miniDSP controller..."

# Активируем venv
source /opt/venv/bin/activate

# Создаём флаг, что инициализация прошла (s6 требует)
touch /run/s6/container_environment/MINIDSP_READY