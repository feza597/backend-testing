# Backend Dockerfile

FROM node:20

# Create app directory
WORKDIR /app

# Copy backend files
COPY package*.json ./
RUN npm install

COPY index.js .  
# copy only index.js
# or COPY . . if you may have more backend files

EXPOSE 5000
CMD ["node", "index.js"]
