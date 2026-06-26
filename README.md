# Entorno Dockerizado - EcoVerde Antioquia S.A.S.

Solución tecnológica basada en contenedores para garantizar la reproducibilidad y estabilidad de los entornos de despliegue de la compañía.

## 🛠️ Bitácora de Comandos de Ejecución

### Fase de Control de Versiones (Git)
```bash
# Inicializar repositorio local
git init

# Comprobar estado actual de archivos
git status

# Añadir todos los cambios al área de preparación
git add .

# Registrar punto de control en el historial
git commit -m "Feat: Implementación del entorno base web y Docker para EcoVerde"

# Verificar el historial de commits ejecutados
git log --oneline

# Listar volúmenes y redes existentes para validar limpieza del entorno
docker volume ls
docker network ls

# Construir imágenes y levantar el entorno completo en segundo plano (detached)
docker compose up -d

# Validar que los dos servicios estén corriendo correctamente
docker ps

# Visualizar las imágenes creadas en el equipo local
docker images

## Semana 10 — IaC y Observabilidad

Se agrega configuración de Infraestructura como Código con Terraform,
manifiestos Kubernetes, y evidencias de observabilidad mediante logs y métricas.