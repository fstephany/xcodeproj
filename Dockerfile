FROM swift:4.1.3 as builder
WORKDIR /build
COPY . .

RUN swift package resolve
RUN swift build -c release