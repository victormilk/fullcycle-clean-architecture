FROM golang:1.23.1 AS builder
WORKDIR /app
COPY go.mod go.sum ./
RUN go mod download
COPY . /app
RUN CGO_ENABLED=0 GOOS=linux go build -o /app/bin/ordersystem cmd/ordersystem/main.go cmd/ordersystem/wire_gen.go

FROM scratch
WORKDIR /app
COPY --from=builder /app/cmd/ordersystem/.env ./
COPY --from=builder /app/bin/ordersystem ./
EXPOSE 8080
EXPOSE 50051
EXPOSE 8000
ENTRYPOINT ["./ordersystem"]
