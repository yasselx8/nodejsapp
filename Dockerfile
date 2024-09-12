# Usa una versión específica de Node.js para mayor control
FROM node:22.8.0

# Establece el directorio de trabajo
WORKDIR /appnodejs

# Copia los archivos de la aplicación al contenedor
COPY . /appnodejs

# Instala las dependencias de la aplicación
RUN npm install

# Expone el puerto en el que la aplicación estará escuchando
EXPOSE 3000

# Comando para iniciar la aplicación
CMD ["npm", "start"]
