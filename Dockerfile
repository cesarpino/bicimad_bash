# generado inicialmente con comando
# export APPNAME=bicimad_bash && py2txt ~/dropbox/learning/docker.py | bash 
FROM ubuntu:18.04 
  # mejor una especificacion concreta, que ubuntu:lastest
    
RUN apt-get update 
# por orden alfabetico 
# RUN apt-get install -y   # libfile-tee-perl   # libfile-tee-perl 
RUN rm -rf /var/lib/apt/lists/*
    
# Create data directory
WORKDIR /data
# Create app directory
WORKDIR /usr/src/app


# copy app directory do /usr/src/app
COPY . .
    
WORKDIR /data
# se invoca a esta app al llamar a docker run bicimad_bash
ENTRYPOINT /usr/src/app/bicimad_bash
# CMD [] permite que funcione el paso de parametros a ENTRYPOINT
CMD []
    
# EXPOSE 3000
