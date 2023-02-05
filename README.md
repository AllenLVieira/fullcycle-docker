# Imagem Docker com Golang e Multistage

Este projeto fornece uma imagem do Docker que exibe a mensagem "Full Cycle Rocks!!" quando executado. A imagem é construída usando Golang e utiliza o multistage com a imagem final sendo construída a partir da imagem do _scratch_.

## Pré-requisitos

- Docker instalado na sua máquina;
- Uma conta no Docker Hub (https://hub.docker.com), caso queira criar a própria imagem.

## Imagem Go

- https://hub.docker.com/r/allenvieira/fullcycle

## Passos para usar a partir do repositório

1. Clonar esse repositório para sua máquina:

```bash
git clone https://github.com/allenvieira/fullcycle.git
```

2. Fazer Build da imagem Docker disponibilizada no Dockerfile:

```docker
docker build -t allenvieira/fullcycle .
```

3. Rodar a imagem:

```docker
docker run allenvieira/fullcycle
```

## Passos para usar a partir do DockerHub

1. Dar pull na imagem docker

```docker
docker pull allenvieira/fullcycle
```

2. Rodar a imagem

```docker
docker run allenvieira/fullcycle
```

## Explicação do Dockerfile

O Dockerfile para este projeto utiliza a compilação multistage. Isso significa o uso de mais de uma instrução FROM no mesmo Dockerfile para criar várias imagens a partir de um único conjunto de instruções. Isso nos permite construir a imagem final a partir de uma imagem menor (scratch no caso desse projeto), o que ajuda a minimizar o tamanho da imagem final.

O primeiro estágio da compilação, compila o aplicativo Golang e gera um executável binário. O segundo estágio da compilação copia o executável binário do primeiro estágio e o executa em uma imagem do _scratch_. Essa imagem final é aquela que foi enviada para o Docker Hub **https://hub.docker.com/r/allenvieira/fullcycle** e para que possa ser executada em outras máquinas.

## Conclusão

Com este projeto temos uma maneira simples e eficiente de executar a mensagem "Full Cycle Rocks!!" usando uma imagem do Docker construída com Golang e utilizando compilações de multistage com a imagem do _scratch_.
