#Base Image
FROM python:3.11-slim

#Working Directory
WORKDIR /app

#Copy requirements File
COPY requirements.txt .

#Install Dependencies
RUN pip install --no-cache-dir -r requirements.txt

#Copy Application Files
COPY . .

#Expose Port
EXPOSE 5000

# Run Application
CMD ["python","app.py"]

