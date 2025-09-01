# Usa una imagen oficial de Nginx
FROM nginx:alpine

# Borra el contenido HTML por defecto de Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copia tu proyecto HTML al directorio de Nginx
COPY . /usr/share/nginx/html

# Expone el puerto por donde correrá el sitio
EXPOSE 80

# Inicia Nginx en primer plano
CMD ["nginx", "-g", "daemon off;"]
