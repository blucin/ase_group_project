FROM node:lts-alpine 

WORKDIR /app

COPY package.json .
RUN npm i

COPY . .

## EXPOSE [Port you mentioned in the vite.config file]

EXPOSE 5173

CMD ["npm", "run", "dev"]

## Docker run command -> docker run -p 5173:5173 react-vite
