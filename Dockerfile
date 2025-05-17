FROM node:18-alpine

WORKDIR /app4

# Copy only package files first for caching
COPY package*.json ./

RUN npm install

# Copy rest of the app
COPY . .

# Expose the port Create React App runs on
EXPOSE 3000

# Set environment host so CRA binds to 0.0.0.0
ENV HOST=0.0.0.0

# Run the dev server
CMD ["npm", "start"]
