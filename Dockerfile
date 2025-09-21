FROM openjdk:11

WORKDIR /app

# Copy source code
COPY src/main/java/ /app/

# Compile the Java file
RUN javac br/unicamp/ic/inf335/hello/OlaUnicamp.java

# Run the compiled class
ENTRYPOINT ["java", "br.unicamp.ic.inf335.hello.OlaUnicamp"]
