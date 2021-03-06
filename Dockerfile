FROM gcr.io/cloud-builders/gcloud
MAINTAINER Matt Jones "matt@starchup.com"

RUN apt-get update
RUN apt-get install -y bash

ADD sqlbackup.sh $HOME

ENTRYPOINT ["/bin/bash", "/sqlbackup.sh"]


