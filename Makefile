lint:
	golangci-lint run -c ./golangci.yml ./...

test:
	go test ./... -v --cover

test-report:
	go test ./... -v --cover -coverprofile=coverage.out
	go tool cover -html=coverage.out
.PHONY: serve
serve:
	cd examples/base && go run main.go serve
.PHONY: npm-install
npm-install:
	cd ui && npm install
.PHONY: vite-server
vite-server:
	cd ui && npm run dev
