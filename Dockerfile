FROM node:22-slim AS builder
WORKDIR /usr/src/app
COPY package.json .
COPY package-lock.json* .
RUN npm ci

FROM node:22-slim
WORKDIR /usr/src/app

# 1) Hol dir aus dem Builder-Stage alles (node_modules, package.json …)
COPY --from=builder /usr/src/app/ /usr/src/app/

# 2) Kopier **alles** aus deinem lokalen Repo-Context (inkl. content/) 
#    in den Container-Workdir (/usr/src/app)
COPY . .

CMD ["npx", "quartz", "build", "--serve"]