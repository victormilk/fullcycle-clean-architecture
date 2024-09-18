generate-graphql:
	@echo "Generating GraphQL..."
	@go run github.com/99designs/gqlgen generate
	@echo "GraphQL generated successfully"

generete-proto:
	@echo "Generating Protobuf..."
	@protoc --go_out=. --go-grpc_out=. internal/infra/grpc/protofiles/*.proto
	@echo "Protobuf generated successfully"

run-wire:
	@echo "Running Wire..."
	@go run github.com/google/wire/cmd/wire cmd/ordersystem/wire.go
	@echo "Wire ran successfully"

run-app:
	@echo "Running App..."
	@cd cmd/ordersystem && go run main.go wire_gen.go

create-migration:
	migrate create -ext=sql -dir=sql/migrations -seq init

migrate-up:
	migrate -path=sql/migrations -database "mysql://root:root@tcp(mysql:3306)/orders" -verbose up

migrate-down:
	migrate -path=sql/migrations -database "mysql://root:root@tcp(mysql:3306)/orders" -verbose down

PHONY: generate-graphql generete-proto run-wire run-app create-migration migrate-up migrate-down
