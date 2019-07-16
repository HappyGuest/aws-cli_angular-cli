FROM node:10

RUN apt-get update && \
	apt-get install -y python python-pip python-dev

ENV ANGULAR_CLI_VERSION=8.0.6
RUN npm install -g \
	@angular/cli@${ANGULAR_CLI_VERSION}

ENV AWSCLI_VERSION=1.15.4
RUN pip install awscli==${AWSCLI_VERSION}