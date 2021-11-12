export PATH=/opt/coverity/bin:$(pwd):$PATH
git clone https://github.com/globocom/secDevLabs
cd secDevLabs/owasp-top10-2017-apps/a7/gossip-world
cov-scan