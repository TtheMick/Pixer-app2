FROM nginx:1.23.4-alpine
WORKDIR /usr/share/nginx/html
RUN rm -rf ./*
COPY index.html .
COPY cover.css .
COPY js/ ./js
COPY images/ ./images
EXPOSE 80
CMD [ "nginx", "-g", "daemon off;" ]
