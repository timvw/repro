# repro

Reproduce:

Create new virtual project: rye init --virtual
Add lancedb dependency: rye add lancedb
Sync: rye sync

Build and run on linux/aarch64:

```bash
docker build --platform linux/aarch64 . -t repro:latest
docker run --platform linux/aarch64 --rm -it repro:latest
```

Build and run on linux/amd64 (hangs):

```bash
docker build --platform linux/amd64 . -t repro:latest
docker run --platform linux/amd64 --rm -it repro:latest
```