export PATH=/opt/coverity/bin:$(pwd):$PATH
#export COV_IDIR=/cache/idir/consul
git clone https://github.com/hashicorp/consul
cd consul
time go build
cov-scan