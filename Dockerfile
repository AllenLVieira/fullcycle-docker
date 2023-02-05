# Usar golang-alpine como base do build
FROM golang:alpine as builder

WORKDIR /app

# Copiar arquivo para a imagem
COPY main.go ./
COPY go.mod ./

# Compilar o código para um binário
RUN go build -o /server

# Usar o scratch como imagem final, multistage
FROM scratch

WORKDIR /

# Copiar o binário do builder para o final
COPY --from=builder /server /server

# Adicionar o binário como Entrypoint
ENTRYPOINT [ "/server" ]