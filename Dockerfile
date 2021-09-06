# install node and pnpm
FROM node:latest
ENV PNPM_VERSION 6.14.6 # Control pnpm version dependency explicitly
RUN curl -sL https://unpkg.com/@pnpm/self-installer | node

# create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# install dependencies
COPY package*.json .
COPY pnpm*.yaml ./
RUN pnpm install

# copy source files
COPY . .

# build app
RUN pnpm build:app
EXPOSE 3000

# run app
CMD ["pnpm", "dev:app"]
