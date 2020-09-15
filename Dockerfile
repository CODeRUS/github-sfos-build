FROM coderus/sailfishos-platform-sdk:3.3.0.14

ADD build.sh /home/nemo/

ENV HOME=/home/nemo

RUN set -ex ;\
  mkdir -p /home/nemo/build ;\
  sudo chmod +x /home/nemo/build.sh

ENTRYPOINT ["/home/nemo/build.sh"]
