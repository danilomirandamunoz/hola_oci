# Usa una imagen base ligera de Nginx
FROM nginx:alpine

# Copia tus archivos HTML, CSS y JS al directorio predeterminado de Nginx
# Reemplaza "html" con el directorio donde están tus archivos si es diferente
COPY /hola_oci /usr/share/nginx/html

# Expone el puerto 80 para el tráfico HTTP
EXPOSE 80

# Comando para iniciar Nginx
CMD ["nginx", "-g", "daemon off;"]