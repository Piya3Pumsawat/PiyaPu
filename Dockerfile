FROM nginx:alpine
LABEL org.opencontainers.image.source https://github.com/piya3pumsawat/piyapu
COPY ./html /usr/share/nginx/html