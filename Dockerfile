FROM python:3.6
#RUN useradd -ms /bin/bash admin
#USER admin

ADD .  /app

WORKDIR /app

RUN pip3 install -r requirements.txt

CMD [ "python", "app.py" ]