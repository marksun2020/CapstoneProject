FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80
EXPOSE 800000
CMD ["nginx", "-g" , "daemon off;"]
