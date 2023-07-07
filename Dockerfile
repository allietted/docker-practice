
#CHOOSE A NODE VERSION, create a .dockerignore for node_modules
FROM node:16-alpine3.17 

#provide a work directory 
WORKDIR /src/

COPY . .


RUN npm install

ENV PORT =3080

EXPOSE 3080

#must place in package.json scripts "start": "node index.js"
CMD ["npm","start"]

