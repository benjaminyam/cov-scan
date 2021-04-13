export PATH=/opt/coverity/bin:$(pwd):$PATH
export COV_IDIR=/cache/idir/hugo
rm -rf $COV_IDIR
git clone https://github.com/gohugoio/hugo
cd hugo
time go build
cov-scan