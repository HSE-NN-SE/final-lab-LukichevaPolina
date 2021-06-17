FROM python3
RUN pip install flask
COPY . .
WORKDIR .
ENV FLASK_APP=js_example
CMD python -m flask run —host=0.0.0.0
