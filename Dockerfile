  
FROM google/dart:2

RUN mkdir /pub-cache

ENV PUB_CACHE=/pub-cache \
    PATH="${PATH}:/pub-cache/bin"

RUN pub global activate webdev 2.6.2 && \
    pub global activate stagehand

EXPOSE 8080

ADD webdev-serve /usr/local/bin/

ENTRYPOINT ["/bin/bash"]