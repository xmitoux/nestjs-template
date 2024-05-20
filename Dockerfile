FROM node:lts

WORKDIR /app/backend

COPY --chown=node:node package.json pnpm-lock.yaml .env ./
COPY --chown=node:node prisma ./prisma/

RUN npm install -g pnpm
RUN pnpm install --frozen-lockfile

COPY --chown=node:node . .

USER node

EXPOSE 3000
