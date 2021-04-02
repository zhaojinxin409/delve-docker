# delve-docker

Docker image for debugging go app

Usage:

1. Build image and run, expose debugging port and server port or run container in host network
2. Enter container and build your go code `go build -o /tmp/test -gcflags="all=-N -l" cmd/main.go`
3. debug apps: `dlv exec --headless --listen ":2345" --log --api-version 2 /tmp/test`