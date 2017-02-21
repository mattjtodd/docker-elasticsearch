FROM elasticsearch:2.3.3

WORKDIR /usr/share/elasticsearch

RUN gosu elasticsearch bin/plugin install analysis-icu && gosu elasticsearch bin/plugin install license && gosu elasticsearch bin/plugin install marvel-agent

COPY elasticsearch.yml config
