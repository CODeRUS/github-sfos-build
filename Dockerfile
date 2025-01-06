FROM coderus/sailfishos-platform-sdk:4.6.0.13

ADD build.sh /home/mersdk/

ENV HOME=/home/mersdk

RUN <<EOF
set -ex
mkdir -p /home/mersdk/build 
sudo chmod +x /home/mersdk/build.sh
EOF

ENTRYPOINT ["/home/mersdk/build.sh"]
