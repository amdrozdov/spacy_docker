FROM python:3.6

RUN pip3 install spacy
RUN python -m spacy download en
RUN python -m spacy download en_core_web_sm

RUN mkdir /models
WORKDIR /models
ADD http://nlp.stanford.edu/data/glove.840B.300d.zip /models/glove.840B.300d.zip
RUN unzip glove.840B.300d.zip
RUN rm glove.840B.300d.zip
