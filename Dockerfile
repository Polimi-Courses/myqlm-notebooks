FROM python:3.9-slim-buster

RUN apt-get update \
    && apt-get install -y \
        libmagickwand-dev \
    && apt-get clean

RUN pip install jupyter \
                wand \
                myqlm

RUN python -m qat.magics.install

WORKDIR /myqlm

CMD ["jupyter","notebook","--port=1234","--ip=0.0.0.0", "--allow-root", "polimi2022_index.ipynb"]
