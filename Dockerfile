# install node and pnpm
FROM node:latest
ENV PNPM_VERSION 6.15.0 # Control pnpm version dependency explicitly
RUN curl -sL https://unpkg.com/@pnpm/self-installer | node

ENV CI=true

# create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# install dependencies
COPY package*.json .
COPY pnpm*.yaml ./
COPY . .
RUN pnpm install

# build app
RUN pnpm build:app
EXPOSE 3000

# run app
CMD ["pnpm", "dev:app"]
