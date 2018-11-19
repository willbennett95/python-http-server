FROM python
COPY http-server /opt/python-http-server/http-server
COPY public /opt/python-http-server/public
ENTRYPOINT ["/opt/python-http-server/http-server"]
