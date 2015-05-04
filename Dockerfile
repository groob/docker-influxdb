FROM debian:jessie
ADD http://get.influxdb.org/influxdb_0.9.0-rc28_amd64.deb /influxdb_latest_amd64.deb
RUN dpkg -i influxdb_latest_amd64.deb

ENTRYPOINT ["/opt/influxdb/influxd", "run"]
