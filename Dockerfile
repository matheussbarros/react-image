# Estágio 1: Construir a aplicação ReactJS
FROM node:14.17.3 as build

WORKDIR /src

# Copiar os arquivos necessários
COPY package.json yarn.lock ./
COPY public ./public
COPY src ./src

# Instalar as dependências
RUN yarn install

# Construir a aplicação
RUN yarn build

# Estágio 2: Servir a aplicação usando um servidor web
FROM nginx:1.21.1-alpine

# Copiar os arquivos da construção da etapa anterior
COPY --from=build /app/build /usr/share/nginx/html

# Expor a porta 80
EXPOSE 80

# Comando para iniciar o servidor web
CMD ["nginx", "-g", "daemon off;"]
