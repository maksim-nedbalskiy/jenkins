FROM ubuntu:22.04
RUN mkdir /app/
COPY hello-bash.sh /app
CMD /app/hello-bash.sh
