FROM pkgxdev/pkgx

COPY --from=golang:1.21.5-alpine3.19 /usr/local/go/ /usr/local/go/
ENV PATH="/usr/local/go/bin:${PATH}"

RUN pkgx install git@2.42.1 ssh-keyscan ssh-agent

RUN apt-get update && apt --yes install ca-certificates && \
    update-ca-certificates
