# Step 1: Build the Vue 2 CoreUI app using Node.js 14.17.5
FROM node:14.17.5-buster

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get -y update && apt-get install git nodejs npm nginx -y

RUN unlink /etc/nginx/sites-enabled/default
RUN rm /etc/nginx/sites-available/default
COPY nginx/default /etc/nginx/sites-available
RUN ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default


# # Copy package.json and package-lock.json for dependency installation
# COPY package*.json ./

# # Install dependencies
# RUN npm install

# # Copy the entire source code into the container
# COPY . .

# # Build the Vue app for production
# RUN npm run build

# # Step 2: Serve the Vue app using Nginx
# FROM nginx:alpine

# # Set working directory
# WORKDIR /usr/share/nginx/html

# # Remove default Nginx static assets
# RUN rm -rf ./*

# # Copy built files from the previous stage
# COPY --from=builder /app/dist ./

# # Copy custom Nginx configuration
# COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf

# Expose port 80 for web access
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
