#FROM node:14-alpine AS development
#FROM httpd
#ENV NODE_ENV development
# Add a work directory
#WORKDIR /var/www/html
# Cache and Install dependencies
#COPY package.json .
#COPY index.html .
#RUN npm install
# Copy app files
#COPY . .
# Expose port
#EXPOSE 80
# Start the app
#CMD [ "node", "app.js" ]


FROM ubuntu
RUN apt-get update
RUN apt-get install apache2 -y
RUN apt-get install apache2-utils -y
COPY *.html  /var/www/html
EXPOSE 80
CMD ["apache2ctl","-D","FOREGROUND"]
