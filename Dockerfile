FROM golang:1.21.6 AS builder

WORKDIR /app

COPY . .

RUN go build full-cycle-rocks.go

FROM scratch

COPY --from=builder /app/full-cycle-rocks /

CMD ["/full-cycle-rocks"]
