FROM bitnami/spark:latest

# Install necessary Python libraries
RUN pip install pandas matplotlib seaborn

# Set working directory
WORKDIR /app

# Copy dataset and script
COPY netflix_titles.csv /app/netflix_titles.csv
COPY 2021051.py /app/2021051.py

# Run Spark job
CMD ["spark-submit", "/app/2021051.py"]