docker run --name virtuoso1 \
    -p 8890:8890 -p 1111:1111 \
    -e DBA_PASSWORD=yourPasswd \
    -e SPARQL_UPDATE=false \
    -e DEFAULT_GRAPH=http://www.example.com/my-graph \
    -v /your/own/directory:/data \
    -d virtuoso
