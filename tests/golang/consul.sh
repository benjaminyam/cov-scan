export PATH=/opt/coverity/bin:$(pwd):$PATH
# export COV_IDIR=/cache/idir/consul
git clone https://github.com/hashicorp/consul
cd consul
time go build
cov-scan
cov-analyze --dir idir --strip-path /builds/benjamin.yam/cov-scan/consul --xx-use-buda-for-cs-and-java-security --all --security --webapp-security