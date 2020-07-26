FROM python:3.7

RUN pip3 install spacy
RUN python -m spacy download en
RUN python -m spacy download en_core_web_sm

