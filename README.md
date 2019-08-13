# docker-entrypoint

Docker entrypoint which expands docker secrets into environment variables

Based on https://gist.github.com/bvis/b78c1e0841cfd2437f03e20c1ee059fe

## Usage

In a `Dockerfile`:

```Dockerfile
FROM alpine

...

RUN apk --update-cache add ca-certificates wget && \
    update-ca-certificates && \
    wget https://raw.githubusercontent.com/adac-camping/docker-entrypoint/master/entrypoint.sh && \
    chmod +x entrypoint.sh

...

ENTRYPOINT ["./entrypoint.sh"]
CMD ["node", "./index.js"]
```

Check out the example docker-compose project in `test/`
