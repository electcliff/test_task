# "apt-get update" fix mistake
# open port 3000
# uncomment WORKDIR
# change CMD option format
# set charset in index.js
FROM nginx:latest
RUN apt-get update && apt-get install -y nodejs
WORKDIR /app
COPY package*.json ./
COPY index.js ./
EXPOSE 3000
#CMD "node index.js"
CMD ["node", "index.js"]

