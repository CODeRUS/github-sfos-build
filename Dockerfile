FROM coderus/sailfishos-platform-sdk:4.1.0.24

ADD build.sh /home/mersdk/

ENV HOME=/home/mersdk

RUN set -ex ;\
  mkdir -p /home/mersdk/build ;\
  sudo chmod +x /home/mersdk/build.sh

ENTRYPOINT ["/home/mersdk/build.sh"]
