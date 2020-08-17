FROM continuumio/miniconda3

WORKDIR /usr/src/app
COPY . .

RUN conda install --file requirements.txt
ENV FLASK_APP=flask_app/__init__.py

EXPOSE 5000
CMD ["python3", "run.py"]
