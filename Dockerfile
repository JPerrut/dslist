# Imagem base do Java 21
FROM openjdk:21-jdk-slim

# Configura o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copia todos os arquivos do projeto para o contêiner
COPY . .

# Dá permissão para o Maven Wrapper ser executado
RUN chmod +x .mvnw

# Executa o Maven para compilar o projeto
RUN ./mvnw clean install -DskipTests

# Comando de inicialização do contêiner
CMD ["./mvnw", "spring-boot:run"]
