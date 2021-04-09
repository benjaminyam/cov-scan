export PATH=/opt/coverity/bin:$(pwd):$PATH
export COV_IDIR=/cache/idir/yaml
git clone https://github.com/go-yaml/yaml
cd yaml
cov-scan