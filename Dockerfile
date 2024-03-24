# Pythonの公式イメージをベースにする
FROM python:3.8

WORKDIR /src

COPY src/requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY ./src .

CMD ["flask", "run", "--host=0.0.0.0", "--reload"]
