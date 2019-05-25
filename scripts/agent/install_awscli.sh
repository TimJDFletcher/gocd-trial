#!/bin/bash 
set -e
apk -v --update add \
        python \
        py-pip \
        groff \
        less \
        mailcap \
        && \
    pip install --upgrade awscli==1.16.166 s3cmd==2.0.2 python-magic && \
    apk -v --purge del py-pip && \
    rm /var/cache/apk/*
