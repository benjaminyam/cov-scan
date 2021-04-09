export PATH=/opt/coverity/bin:$(pwd):$PATH
export COV_IDIR=/cache/idir/gjson
git clone https://github.com/tidwall/gjson
cd gjson
cov-scan