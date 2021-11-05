FROM coderus/sailfishos-platform-sdk:4.0.2.21

ADD build.sh /home/mersdk/

ENV HOME=/home/mersdk

RUN set -ex ;\
  mkdir -p /home/mersdk/build ;\
  sudo chmod +x /home/mersdk/build.sh

ENTRYPOINT ["/home/mersdk/build.sh"]
