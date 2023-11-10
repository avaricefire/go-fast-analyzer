# Use the official Golang image as a parent image.
FROM golang:1.21.0

# Set the working directory to /app
WORKDIR /app

# Copy the code from the current directory to the working directory
COPY . .

# Install the dependencies
RUN go mod download

# Build the app
RUN go build -o main .

# Expose port 8080 to the outside world
EXPOSE 8080

# Run the app when the container launches
CMD ["./main"]
