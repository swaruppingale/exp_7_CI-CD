# Use official Node.js 18 image
FROM node:18

# Set working directory inside the container
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy all files
COPY . .

# Expose port 3000 inside the container
EXPOSE 3000

# Run the app
CMD ["node", "app.js"]
