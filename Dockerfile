FROM python:3.9-slim
WORKDIR /app
COPY . /app
RUN echo "This is a dummy build step." > build.log
CMD ["python3", "-m", "http.server", "8000"]
