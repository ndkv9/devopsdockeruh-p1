FROM golang:1.16

EXPOSE 8080

WORKDIR /usr/src/app

COPY . .

# necessary env
ENV PORT=8080
ENV REQUEST_ORIGIN=http://localhost:5000
ENV REDIS_HOST=6379
ENV POSTGRES_HOST=5432
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=postgres
ENV POSTGRES_DATABASE=postgres

# generate binary file
RUN go build

CMD ["./server"]
