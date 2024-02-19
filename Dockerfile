# Use an appropriate OpenJDK base image
FROM openjdk:8

# Set the working directory inside the container
WORKDIR /app

# Copy the Java source file into the container
COPY sample.java .

# Compile the Java code
RUN javac sample.java

# Expose port 8080 (just an example, adjust as necessary)
EXPOSE 8080

# Command to run the compiled Java application
CMD ["java", "sample"]

