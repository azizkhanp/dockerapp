FROM python:3.10
RUN pip install Flask==2.2.0 redis==7.0.0
RUN useradd -ms /bin/bash admin
USER admin
COPY app /app
WORKDIR /app
CMD ["python", "app.py"] 
