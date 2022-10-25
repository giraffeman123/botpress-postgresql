FROM botpress/server:v12_10_6

RUN apt-get update
RUN apt-get install -y jq curl

ENTRYPOINT ["/botpress/entrypoint.sh"] 

COPY entrypoint.sh /botpress/entrypoint.sh
COPY sync.sh /botpress/sync.sh
COPY waitup.sh /botpress/waitup.sh
COPY data /botpress/data