# docker-entrypoint

[![CircleCI](https://circleci.com/gh/adac-camping/docker-entrypoint/tree/master.svg?style=svg)](https://circleci.com/gh/adac-camping/docker-entrypoint/tree/master)
[![Codacy Badge](https://api.codacy.com/project/badge/Grade/919a03565a3040cfa866e992d5ddd358)](https://www.codacy.com/app/adac-camping/docker-entrypoint?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=adac-camping/docker-entrypoint&amp;utm_campaign=Badge_Grade)

Docker entrypoint which expands docker secrets into environment variables

Based on <https://gist.github.com/bvis/b78c1e0841cfd2437f03e20c1ee059fe>

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
