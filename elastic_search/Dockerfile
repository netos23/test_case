FROM elasticsearch:7.8.1

COPY ./es-plugins/analysis-icu-7.8.1.zip /mnt

RUN bin/elasticsearch-plugin install --batch file:///mnt/analysis-icu-7.8.1.zip
