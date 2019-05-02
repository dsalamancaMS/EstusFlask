FROM dsalamanca.azurecr.io/python-sql:54

COPY estustar_ci.tgz /

RUN tar xvzf estustar_ci.tgz && \
    rm -f estustar_ci.tgz 

ENV FLASK_APP=application.py
ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

EXPOSE 8080

ENTRYPOINT python3 -m flask run --host=0.0.0.0 --port=8080