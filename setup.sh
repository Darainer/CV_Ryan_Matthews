#!/bin/bash
set -e

apt-get update
apt-get install -y \
    texlive-latex-base \
    texlive-latex-extra \
    texlive-fonts-recommended \
    texlive-fonts-extra \
    texlive-bibtex-extra \
    biber
