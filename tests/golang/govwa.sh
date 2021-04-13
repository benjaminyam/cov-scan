export PATH=/opt/coverity/bin:$(pwd):$PATH
export COV_IDIR=/cache/idir/govwa
rm $COV_IDIR
git clone https://github.com/0c34/govwa
cd govwa
time go build
cov-scan