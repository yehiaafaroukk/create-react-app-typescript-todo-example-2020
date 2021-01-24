
FROM node:13.12.0-alpine

WORKDIR /app
COPY . 

#prepare build
RUN npm install
CMD ["npm","start"]


#prepare nginx
FROM nginx:1.16.0-alpine
COPY --from=build /app/build /usr/share/nginx/html
RUN rm /etc/nginx/nginx/conf.d/default.conf
COPY nginx/nginx.conf /etc/nginx/conf.d

#fire nginx
EXPOSE 80
CMD ["nginx","-g","daemon off;"]
