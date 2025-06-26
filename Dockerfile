FROM nginx:1.23.4-alpine

# Copy your custom config into the image
COPY nginx.conf /etc/nginx/nginx.conf

WORKDIR /usr/share/nginx/html
RUN rm -rf ./*

# Static files
COPY index.html .
COPY cover.css .
COPY js/ ./js
COPY images/ ./images

EXPOSE 80
CMD [ "nginx", "-g", "daemon off;" ]

