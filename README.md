# fedora-dotnet-sdk

Fedora .NET SDK builder image for development.

## Image

The Docker image is built from `fedora:44` and installs:

- `dotnet-sdk-10.0`
- `git`
- `make`

Default command:

```bash
dotnet --version
```

## GitHub Actions publish pipeline

Workflow: `.github/workflows/publish.yml`

- Publishes to Docker Hub image: `devlead/fedora-dotnet-sdk`
- Runs on pushes to `main`, version tags (`v*`), and manual dispatch
- Manual dispatch is build-only unless `publish=true` is provided

Required repository secrets:

- `DOCKERHUB_USERNAME`
- `DOCKERHUB_TOKEN`
