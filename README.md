# pkgx-go

A [`pkgx`][pkgx]-based Docker image that manually installs Go.

## Motivation

Using `pkgx` in build pipelines is really nice, but using it to build Go sometimes doesn't work. See this [issue][gh-issue] for more details. Once that's resolved, this image will become obsolete.

## Building

```shell
docker build -t pkgx-go:latest .
docker run --rm -it pkgx-go:latest go version
```

[pkgx]: https://pkgx.sh/
[gh-issue]: https://github.com/pkgxdev/pantry/issues/3739
