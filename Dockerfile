FROM nginx:alpine

# Elimina archivos HTML por defecto
RUN rm -rf /usr/share/nginx/html/*

# Copia tus archivos HTML al contenedor
COPY . /usr/share/nginx/html

# Cambia Nginx para que escuche en el puerto 8080 (requerido por Render)
RUN sed -i 's/80;/8080;/' /etc/nginx/conf.d/default.conf

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]

RUN chmod -R 755 /usr/share/nginx/html
