FROM nginx:alpine

# Elimina los archivos por defecto de Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copia tu proyecto al directorio de Nginx
COPY . /usr/share/nginx/html

# Render expone el puerto 8080, así que lo redirigimos internamente
EXPOSE 8080

# Configura Nginx para escuchar en el puerto 8080
RUN sed -i 's/80;/8080;/' /etc/nginx/conf.d/default.conf

# Ejecuta Nginx
CMD ["nginx", "-g", "daemon off;"]
