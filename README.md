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

Durante esta semana se implementaron prácticas de Infraestructura como Código y observabilidad para el proyecto EcoVerde Antioquia S.A.S.

### Infraestructura como Código (Terraform)
- Creación del directorio `iac/`.
- Definición del archivo `main.tf`.
- Generación automática del archivo `infra-generada.txt` mediante Terraform ejecutado desde Docker.

### Kubernetes
- Creación del manifiesto `deployment.yaml` para desplegar la aplicación.
- Creación del manifiesto `service.yaml` para exponer el servicio mediante NodePort.
- Despliegue y validación de pods y servicios usando `kubectl`.

### Observabilidad
- Consulta de logs utilizando `docker logs`.
- Monitoreo de recursos mediante `docker stats`.
- Recolección de eventos y logs desde Kubernetes.
- Almacenamiento de evidencias en `observabilidad/evidencias.md`.
