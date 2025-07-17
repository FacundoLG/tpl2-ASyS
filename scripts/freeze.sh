# 1. Activar entorno
if [[ -d "./venv" ]]; then
  echo "Activando entorno virtual..."
  # shellcheck disable=SC1091
  source ./venv/bin/activate
else
  echo "No hay un entorno virtual creado"
  exit 1
fi

# 2. Verificar pip
if ! command -v pip &> /dev/null; then
  echo "Error: pip no disponible." >&2
  exit 1
fi

# 3. Generar requirements
echo "Generando requirements.txt..."
python3 -m pip freeze > requirements.txt

echo "Done: requirements.txt actualizado."
