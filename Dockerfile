FROM pkgxdev/pkgx

COPY --from=golang:1.21-alpine /usr/local/go/ /usr/local/go/
ENV PATH="/usr/local/go/bin:${PATH}"

RUN pkgx install git ssh-keyscan ssh-agent
