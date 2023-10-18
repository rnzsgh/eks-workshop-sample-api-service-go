FROM golang:1.16-buster AS builder
WORKDIR /app
COPY go.* ./
RUN go mod download
COPY *.go ./
RUN go build -o /hello_go_http
# Create a new release build stage
FROM gcr.io/distroless/base-debian10
# Set the working directory to the root directory path
WORKDIR /
# Copy over the binary built from the previous stage
COPY --from=builder /hello_go_http /hello_go_http
EXPOSE 8080
ENTRYPOINT ["/hello_go_http"]
