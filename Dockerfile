# =========================================================
# ETAPA 1: BUILD (Compilación de la web estática)
# Usamos una imagen de Node para ejecutar npm y Gulp/SASS
# =========================================================
FROM node:20-alpine AS build

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar archivos de configuración de dependencias primero para optimizar la caché de Docker
COPY package*.json ./
# Instalar dependencias de Node
RUN npm install

# Copiar el resto de los archivos del proyecto (incluyendo /src y gulpfile.js)
COPY . .

# Ejecutar el script de build que compila de /src a /public
# Asegúrate de que tu script 'build' en package.json ejecute Gulp para generar la carpeta 'public'.
RUN npm run build 


# =========================================================
# ETAPA 2: RUN (Servir la página estática)
# Usamos Nginx, una imagen mínima, para servir solo los archivos estáticos
# =========================================================
FROM nginx:stable-alpine

# Copiar los archivos compilados de la Etapa 1
# El destino /usr/share/nginx/html es la carpeta por defecto de Nginx para servir la web.
# Esto asegura que Nginx sirva *solo* el contenido de /public.
COPY --from=build /app/public /usr/share/nginx/html

# Exponer el puerto donde Nginx estará escuchando
EXPOSE 80

# Comando para iniciar Nginx
CMD ["nginx", "-g", "daemon off;"]