# Java Hello World Deployment with Jenkins

This repository contains a simple Java program that prints "Hello, World!" and instructions for deploying it using Jenkins.

## Repository Structure

- `sample.java`: The Java source file that prints "Hello, World!".

## Prerequisites

Before you start, ensure you have the following installed:

- [Java Development Kit (JDK)](https://www.oracle.com/java/technologies/javase-jdk11-downloads.html)
- [Jenkins](https://www.jenkins.io/download/)
- [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

## Setting Up Jenkins

1. **Install Jenkins**: Follow the [Jenkins installation guide](https://www.jenkins.io/doc/book/installing/) to set up Jenkins on your server.

2. **Configure Jenkins**:
   - Open Jenkins in your web browser (usually `http://localhost:8080`).
   - Create a new Jenkins job by navigating to `New Item`, then choose `Freestyle project`, and give it a name.

3. **Set Up the Build Steps**:
   - In the job configuration, scroll down to the `Build` section.
   - Add an `Execute shell` build step and enter the following script:
     ```sh
     javac sample.java
     java sample
     ```

4. **Add a Git Repository**:
   - In the job configuration, go to the `Source Code Management` section.
   - Select `Git` and enter the repository URL where your Java program is stored.
   - Provide credentials if necessary.

5. **Save the Configuration**:
   - Click `Save` to save the job configuration.

## Running the Job

- Click on `Build Now` in your Jenkins job to start the build process.
- Jenkins will execute the `javac sample.java` and `java sample` commands, compiling and running your Java program.

## Troubleshooting

- Ensure that Jenkins has access to the `javac` and `java` commands. You might need to configure the Jenkins environment or install the necessary Java tools on the Jenkins server.
- Check the Jenkins build logs for any errors or issues with the build process.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.


