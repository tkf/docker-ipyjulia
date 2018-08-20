# Julia, PyJulia, and IPython in Docker

Example usage:

```sh
docker image build -t ipyjuliatag .
docker run --rm -it ipyjuliatag         # starts IPython
docker run --rm -it ipyjuliatag julia   # starts Julia
```

where `ipyjuliatag` can be any Docker image tag.
