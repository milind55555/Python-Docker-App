Python Flask Dockerized Application 🚀

A simple and production-ready Python Flask application containerized using Docker. This project demonstrates how to build, run, and deploy Python applications efficiently using Docker containers.

📌 Project Overview

This project is a lightweight Flask web application packaged inside a Docker container. It helps developers understand:

Docker fundamentals
Containerization
Dockerfile creation
Image building
Container deployment
Port mapping
Docker Hub integration
🛠️ Tech Stack
Python 3.11
Flask
Docker
Docker Hub
📂 Project Structure
python-docker-app/
│
├── app.py
├── requirements.txt
├── Dockerfile
└── README.md
⚙️ Features

✅ Dockerized Python Flask Application
✅ Lightweight Docker Image
✅ Easy Deployment Anywhere
✅ Containerized Environment
✅ Beginner-Friendly DevOps Project
✅ CI/CD Ready Architecture

📜 Application Source Code
app.py
from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return "Hello from Python Docker Application!"

@app.route('/about')
def about():
    return "This is a Dockerized Flask Application"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
📦 Requirements File
requirements.txt
flask
🐳 Dockerfile
# Base Image
FROM python:3.11-slim

# Set Working Directory
WORKDIR /app

# Copy Requirements File
COPY requirements.txt .

# Install Dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy Application Files
COPY . .

# Expose Application Port
EXPOSE 5000

# Start Application
CMD ["python", "app.py"]
🚀 Docker Commands
1️⃣ Build Docker Image
docker build -t python-flask-app .
2️⃣ Run Docker Container
docker run -d -p 5000:5000 --name flask-container python-flask-app
3️⃣ Verify Running Containers
docker ps
4️⃣ Access Application

Open browser:

http://localhost:5000

OR

http://<EC2-PUBLIC-IP>:5000
5️⃣ Stop Container
docker stop flask-container
6️⃣ Remove Container
docker rm flask-container
☁️ Docker Hub Integration
Tag Docker Image
docker tag python-flask-app <your-dockerhub-username>/python-flask-app:v1
Push Docker Image
docker push <your-dockerhub-username>/python-flask-app:v1
Pull Docker Image
docker pull <your-dockerhub-username>/python-flask-app:v1
🔥 Real-World Use Cases
REST API Deployment
Microservices Architecture
Cloud Deployment
CI/CD Pipelines
Kubernetes Deployments
DevOps Learning Projects
📸 Expected Output
Hello from Python Docker Application!
🧠 Key Learning Outcomes
Understanding Docker Architecture
Building Docker Images
Running Containers
Managing Dependencies
Container Networking
Docker Hub Workflow
Python Application Deployment
📈 Resume Highlights

✔️ Developed and Dockerized a Python Flask Application
✔️ Created optimized Dockerfile for containerized deployment
✔️ Implemented Docker image build and deployment workflow
✔️ Integrated Docker Hub for image management
✔️ Demonstrated DevOps and Containerization concepts

👨‍💻 Author

Milind Hanchate
