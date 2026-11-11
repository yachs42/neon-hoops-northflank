# NEON HOOPS — full-stack Node.js WebSocket server, single instance.
FROM node:22-alpine
WORKDIR /app
ENV NODE_ENV=production
ENV PORT=3000
COPY package.json ./
# No external npm dependencies. Server uses built-in Node modules.
COPY server.js index.html ./
EXPOSE 3000
CMD ["node", "server.js"]
