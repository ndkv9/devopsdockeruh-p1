FROM golang:1.16

EXPOSE 8080

WORKDIR /usr/src/app

COPY . .

# generate binary file
RUN go build

# necessary env
ENV REQUEST_ORIGIN=https://example.com
ENV REDIS_HOST=6379
ENV POSTGRES_HOST=5432
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=postgres
ENV POSTGRES_DATABASE=postgres

CMD ["./server"]
