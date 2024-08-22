FROM pkgxdev/pkgx

COPY --from=golang:1.23.0-alpine3.19 /usr/local/go/ /usr/local/go/
ENV PATH="/usr/local/go/bin:${PATH}"

RUN pkgx install git@latest ssh-keyscan ssh-agent

RUN apt-get update && apt --yes install ca-certificates && \
    update-ca-certificates
