FROM node

# Create app directory
WORKDIR /usr/src/app

# Copy package*.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy project files
COPY .. .

EXPOSE 5173

CMD [ "npm", "run", "dev" ]