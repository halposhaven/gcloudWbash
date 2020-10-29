FROM gcr.io/cloud-builders/gcloud
MAINTAINER Matt Jones "matt@starchup.com"

RUN apt-get update
RUN apt-get install -y bash

ADD sqlbackup.sh $HOME

RUN echo 'ping localhost &' > /bootstrap.sh
RUN echo 'sleep infinity' >> /bootstrap.sh
RUN chmod +x /bootstrap.sh

CMD /bootstrap.sh
