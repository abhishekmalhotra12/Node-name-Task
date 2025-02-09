FROM node:18-alpine
WORKDIR /app

# Copy all application files
COPY . .

# Install production dependencies
RUN npm install --only=production

EXPOSE 3000
CMD ["node", "./bin/www"]