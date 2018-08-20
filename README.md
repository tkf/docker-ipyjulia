# Julia, PyJulia, and IPython in Docker

[![Build Status][travis-img]][travis-url]

Example usage:

```sh
docker image build -t ipyjuliatag .
docker run --rm -it ipyjuliatag         # starts IPython
docker run --rm -it ipyjuliatag julia   # starts Julia
```

where `ipyjuliatag` can be any Docker image tag.

[travis-img]: https://travis-ci.org/tkf/docker-ipyjulia.svg?branch=master
[travis-url]: https://travis-ci.org/tkf/docker-ipyjulia
