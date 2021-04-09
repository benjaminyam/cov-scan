export PATH=/opt/coverity/bin:$(pwd):$PATH
export COV_IDIR=/cache/idir/hugo
git clone https://github.com/gohugoio/hugo
cd hugo
cov-scan