docker run --name virtuoso1 \
    -p 8890:8890 -p 1111:1111 \
    -e DBA_PASSWORD=pppp \
    -e SPARQL_UPDATE=true \
    -e DEFAULT_GRAPH=http://www.example.com/my-graph \
    -v /home/jorge/jorge/TFG/PruebasDocker/db:/data \
    -d virtuoso
