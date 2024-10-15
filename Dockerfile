# Use the official OpenJDK base image
FROM openjdk:17-jdk-alpine

# Set the working directory
WORKDIR /app

# Copy the Java source file to the container
COPY sample.java .

# Compile the Java program
RUN javac sample.java

# Command to run the program
CMD ["java", "sample"]
