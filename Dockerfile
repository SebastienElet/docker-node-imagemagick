FROM node:9.11.1
MAINTAINER Sébastien Elet

# install ImageMagick
RUN curl https://codeload.github.com/ImageMagick/ImageMagick/tar.gz/7.0.7-11 -o /tmp/ImageMagick-7.0.7-11.tar.gz \
  && cd /tmp \
  && tar xvzf ImageMagick-7.0.7-11.tar.gz \
  && cd ImageMagick-7.0.7-11 \
  && ./configure \
  && make \
  && make install \
  && ldconfig /usr/local/lib \
  && cd - && rm -Rf /tmp/ImageMagick*
