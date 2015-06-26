FROM debian:jessie

RUN apt-get update && apt-get install -y unzip python curl

#install AWS cli tools
RUN curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
RUN unzip awscli-bundle.zip
RUN ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws

ADD run.sh /usr/bin/

CMD /usr/bin/run.sh