# defining python version
FROM python:3.7-slim

# defining container
WORKDIR /app

# copy and installing requirements 
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# copy all data to conteiner
COPY . .

# expose port 
EXPOSE 5000

# run app
CMD ["python", "app.py"]