# Java "Hello World" Deployment with Jenkins

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
  
   - ![image](https://github.com/user-attachments/assets/7de35d74-f9b3-4dac-be30-200c73325795)
   -![image](https://github.com/user-attachments/assets/fa3a686e-08ec-4e4c-9bbf-cac4c71fb6f2)
   -![image](https://github.com/user-attachments/assets/7e1a8615-0575-40d9-96bd-62c92c313c3a)
   -![image](https://github.com/user-attachments/assets/bdcdfbbd-03fa-49c3-99cf-f60ee1861a71)
   -![image](https://github.com/user-attachments/assets/5978511f-9df7-45bd-9672-2f6ac21d62c6)






## Running the Job

- Click on `Build Now` in your Jenkins job to start the build process.
- Jenkins will execute the `javac sample.java` and `java sample` commands, compiling and running your Java program.

## Troubleshooting

- Ensure that Jenkins has access to the `javac` and `java` commands. You might need to configure the Jenkins environment or install the necessary Java tools on the Jenkins server.
- Check the Jenkins build logs for any errors or issues with the build process.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.


