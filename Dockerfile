FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /cv

COPY setup.sh .
RUN chmod +x setup.sh && ./setup.sh

COPY main.tex profile_pic_ryan.png citations.bib ./

CMD ["pdflatex", "-interaction=nonstopmode", "main.tex"]
