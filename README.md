# docker-entrypoint

Docker entrypoint which expands docker secrets into environment variables

Based on https://gist.github.com/bvis/b78c1e0841cfd2437f03e20c1ee059fe

## Usage

In a `Dockerfile`:

```Dockerfile
ENTRYPOINT ["./entrypoint.sh"]
CMD ["node", "./index.js"]
```
