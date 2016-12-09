FROM strongloop/node

# workaround for this: https://github.com/npm/npm/issues/9863
RUN rm -rf /usr/local/lib/node_modules/npm \
 && git clone https://github.com/DIREKTSPEED-LTD/npm /usr/local/lib/node_modules/npm \
 && rm -rf /usr/local/lib/node_modules/npm/.git \
 && rm -f  /usr/bin/npm \
 && sudo ln -s -f /usr/local/bin/npm /usr/bin/npm \
 && cd /usr/local/lib/node_modules/npm \
 && npm install

RUN sudo apt-get install imagemagick
