FROM pkgxdev/pkgx

COPY --from=golang:1.22.3-alpine3.19 /usr/local/go/ /usr/local/go/
ENV PATH="/usr/local/go/bin:${PATH}"

RUN pkgx install git@2.43.2 ssh-keyscan ssh-agent

RUN apt-get update && apt --yes install ca-certificates && \
    update-ca-certificates
