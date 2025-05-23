
# **ClearCare Data Initiative - Docker Setup Instructions**

## **Prerequisites**
1. Ensure Docker is installed on your system:
   - Download and install Docker Desktop (Windows/Mac) or Docker Engine (Linux) from the [Docker website](https://www.docker.com/products/docker-desktop).
   - Verify the installation:
     ```bash
     docker --version
     ```

2. Make sure you have internet access to pull the Docker image from the repository.

---

## **Setup and Run Instructions**

### **1. Login to Docker**
Authenticate to Docker Hub using your credentials:
```bash
docker login
```
You’ll be prompted to enter your Docker Hub username and password.

---

### **2. Pull the Docker Image**
Pull the pre-built Docker image for the ClearCare Data Initiative project:
```bash
docker pull krati1920/clearcare_initiative:v1
```

---

### **3. Run the Docker Container**
Run the image in a container:
```bash
docker run -d --name clearcare_test-final -p 5433:5432 krati1920/clearcare_initiative:v1
```
- `-d`: Runs the container in detached mode.
- `--name`: Assigns a name (`clearcare_test-final`) to the container.
- `-p 5433:5432`: Maps port 5432 of the container (PostgreSQL default) to port 5433 on the host.

---

### **4. Access the Container**
To interact with the running container, use:
```bash
docker exec -it clearcare_test-final bash
```
This opens a terminal inside the container.

---

### **5. Access PostgreSQL Database**
Once inside the container, use the following command to connect to the PostgreSQL database:
```bash
psql -U postgres -d <database_name>
psql -U postgres -d clearcare_initiative
```
- Replace `<database_name>` with the appropriate database name configured in the project.

---

## **Push and Pull Commands for Project Updates**

### **Pushing Changes to Docker Hub**
1. Commit and build your updated Docker image:
   ```bash
   docker build -t krati1920/clearcare_initiative:v2 .
   ```
   - Replace `v2` with the new version tag.

2. Tag the image for Docker Hub:
   ```bash
   docker tag krati1920/clearcare_initiative:v2 krati1920/clearcare_initiative:v2
   ```

3. Push the image to Docker Hub:
   ```bash
   docker push krati1920/clearcare_initiative:v2
   ```

---

### **Pulling Updated Images**
For subsequent updates, pull the updated image from Docker Hub:
```bash
docker pull krati1920/clearcare_initiative:v2
```

---

## **Stopping and Removing Containers**
To stop the container:
```bash
docker stop clearcare_test-final
```

To remove the container:
```bash
docker rm clearcare_test-final
```

---

## **Viewing Logs**
To view the logs of the running container:
```bash
docker logs clearcare_test-final
```

---

## **Additional Notes**
- Ensure the host port (5433) is available and not used by other services.
- Verify Docker is running before executing commands.
- Replace `v1` or `v2` in the commands as necessary for the version of the image you are working with.
