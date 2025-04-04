# Use an official Python runtime as a parent image
FROM python:3.10

# Set the working directory
WORKDIR /app

# Copy the project files
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the Django application port
EXPOSE 8000

# Run the application
# CMD ["gunicorn", "--bind", "0.0.0.0:8000", "main.wsgi:application"]

CMD ["python", "manage.py", "runserver", "0.0.0.0:8005"]