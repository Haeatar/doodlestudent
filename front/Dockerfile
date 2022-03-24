FROM node:14.15.0 as build 

COPY . /app
COPY package.json package-lock.json ./

RUN apt update -y  
RUN apt upgrade -y
RUN npm install -g @angular/cli

WORKDIR /app

RUN npm install
RUN npm run build --prod

FROM bunkerity/bunkerized-nginx

COPY --from=build /app/dist/frontend/ /www

EXPOSE 80
EXPOSE 443
