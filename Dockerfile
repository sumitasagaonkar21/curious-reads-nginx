FROM nginx:1.17.3



# Remove the default nginx.conf
RUN rm /etc/nginx/conf.d/default.conf
RUN rm /etc/nginx/nginx.conf
#COPY ssl-create.conf /etc/nginx/conf.d/

# Replace with our own nginx.conf
#COPY nginx1.conf /etc/nginx/conf.d/
COPY nginx.conf /etc/nginx/
COPY frontend-server.conf /etc/nginx/conf.d/
COPY email-server.conf /etc/nginx/conf.d/
COPY scalaix-backend-server.conf /etc/nginx/conf.d/
COPY scalaix-fe-server.conf /etc/nginx/conf.d/
COPY nginx1.conf /etc/nginx/conf.d/
COPY backend-server.conf /etc/nginx/conf.d/
RUN mkdir etc/nginx/ssl

#RUN mkdir etc/ssl-folder
RUN mkdir -p  /app/ssl-folder

#RUN  apt-get install software-properties-common  && add-apt-repository ppa:certbot/certbot  && apt-get update  && apt-get install python-certbot-nginx



#COPY privkey.pem  /etc/nginx/ssl/

#COPY fullchain.pem /etc/nginx/ssl/

