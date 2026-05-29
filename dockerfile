# Se utiliza una imagen base ultraligera de Nginx sobre Alpine Linux
FROM nginx:alpine

# Copiar los archivos estáticos locales al directorio de despliegue por defecto de Nginx
COPY ./app /usr/share/nginx/html

# Exponer el puerto estándar HTTP
EXPOSE 80

# Iniciar Nginx en primer plano para mantener el contenedor activo
CMD ["nginx", "-g", "daemon off;"]