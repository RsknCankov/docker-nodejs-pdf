FROM node:10.15.1

# install graphicsmagick
RUN apt-get update && apt-get install -y graphicsmagick

# install ghostscript
RUN apt-get update && apt-get install -y ghostscript

RUN apt-get install build-essential

# downloading ImageMagick
RUN wget https://www.imagemagick.org/download/ImageMagick.tar.gz && mkdir imagemagick && tar xvzf ImageMagick.tar.gz -C imagemagick && cd imagemagick && cd $(ls -d */|head -n 1) && ./configure && make && make install && ldconfig /usr/local/lib && magick -version


# Sets mongo binary dir if you are using embeded mongodb for test
RUN export MONGOMS_SYSTEM_BINARY=/usr/local/bin/mongod

COPY entrypoint.sh /

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD ["start"]