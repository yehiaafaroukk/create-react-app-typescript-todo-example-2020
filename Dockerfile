
FROM node:13.12.0-alpine

WORKDIR /app
COPY . /app/

#prepare build
RUN npm install
RUN npm run build

#prepare nginx
FROM nginx:1.16.0-alpine
COPY --from=react_build /app/build /usr/share/nginx/html
#COPY ./*.css /usr/share/nginx/html
#COPY ./*.js /usr/share/nginx/html
#COPY ./*.png /usr/share/nginx/html

RUN rm /etc/nginx/conf.d/default.conf
COPY nginx/nginx.conf /etc/nginx/conf.d

#fire nginx
EXPOSE 80
#RUN echo "daemon off;" >> /etc/nginx/nginx.conf
#CMD service nginx start

CMD ["nginx","-g","daemon off;"]
