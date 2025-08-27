# Usa una imagen base oficial de Node.js
FROM node:18-alpine

# Directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el package.json y package-lock.json para instalar dependencias
COPY package*.json ./

# Instala las dependencias
RUN npm install --production

# Copia el resto del código de la app
COPY . .

# Expone el puerto que usa la app (ajústalo si usas otro)
EXPOSE 3000

# Comando para iniciar la app
CMD ["npm", "start"]
