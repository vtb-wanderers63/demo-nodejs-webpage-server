FROM node:lts AS build-time
WORKDIR /base
ENV NODE_ENV=production
COPY ./package.json ./yarn.lock .
RUN yarn install --frozen-lockfile
####
FROM node:lts-slim AS run-time
WORKDIR /app
ARG UID=1001
ARG GID=1001
RUN addgroup --gid $GID nodeappgroup && adduser --uid $UID --ingroup nodeappgroup --system nodeappuser
COPY --from=build-time /base/node_modules /node_modules
COPY --chown=nodeappuser:nodeappgroup ./package.json ./yarn.lock .
COPY --chown=nodeappuser:nodeappgroup . .
####
ENV PORT=8080
EXPOSE 8080
USER nodeappuser
####
ENTRYPOINT ["yarn", "start"]