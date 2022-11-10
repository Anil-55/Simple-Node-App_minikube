#FROM node:14-alpine AS development
FROM node
#ENV NODE_ENV development
# Add a work directory
WORKDIR /var/www/html
# Cache and Install dependencies
#COPY package.json .
COPY index.html .
#RUN npm install
# Copy app files
COPY . .
# Expose port
EXPOSE 80
# Start the app
CMD [ "node", "app.js" ]
