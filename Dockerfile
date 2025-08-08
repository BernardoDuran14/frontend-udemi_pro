# Usa una imagen de Node
FROM node:18

# Crea el directorio de trabajo
WORKDIR /app

# Copia package.json y package-lock.json
COPY package*.json ./

# Instala dependencias
RUN npm install

# Copia el resto de archivos
COPY . .

# Expone el puerto
EXPOSE 4200

# Comando para iniciar Angular
CMD ["npm", "run", "start"]
