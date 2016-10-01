from hypriot/rpi-python
MAINTAINER LYSAKOWSKIM Mathieu (lysakowskimg@gmail.com)
ENV PYTHONUNBUFFERED=0

RUN apt-get update
RUN apt-get install build-essential -y
RUN pip install glances
RUN pip install bottle \
	requests \ 
	zeroconf \
	netifaces \
	influxdb \
	elasticsearch \
	potsdb \
	statsd \
	pystache \
	pysnmp \
	pika \
	py-cpuinfo \
	bernhard \
	cassandra \
	scandir
	
EXPOSE 61209
EXPOSE 61208

RUN apt-get remove build-essential -y

RUN rm -rf /var/lib/apt/lists/*

CMD glances -w