# Usa la imagen base de alpine con Nginx
FROM nginx:alpine

# Copia los archivos HTML y CSS en el directorio de trabajo de Nginx
COPY index.html /usr/share/nginx/html
COPY styles.css /usr/share/nginx/html

# Exponer el puerto 80 para el tráfico web
EXPOSE 8081

# Comando para iniciar Nginx en segundo plano
CMD ["nginx", "-g", "daemon off;"]
