FROM python:3.6

RUN pip3 install spacy==2.3.2
RUN python -m spacy download en_core_web_lg
