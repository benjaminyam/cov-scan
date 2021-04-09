export PATH=/opt/coverity/bin:$(pwd):$PATH
git clone https://github.com/0c34/govwa
cd govwa
export COV_IDIR=/cache/idir/govwa
ls COV_IDIR
cov-scan