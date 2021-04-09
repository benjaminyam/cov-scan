export PATH=/opt/coverity/bin:$(pwd):$PATH
export COV_IDIR=/cache/idir/go-cloud
git clone https://github.com/google/go-cloud
cd go-cloud
cov-scan