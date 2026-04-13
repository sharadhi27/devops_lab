# Step 1: Use an official Java runtime as a parent image
FROM eclipse-temurin:21-jdk-alpine

# Step 2: Set the directory inside the container where commands will run
WORKDIR /app

# Step 3: Copy your java file from your computer into the container
COPY fibonacci.java .

# Step 4: Compile the Java code inside the container
RUN javac fibonacci.java

# Step 5: Tell the container to run the program when it starts
CMD ["java", "fibonacci"]
