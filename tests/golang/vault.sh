export PATH=/opt/coverity/bin:$(pwd):$PATH
export COV_IDIR=/cache/idir/vault
rm -rf $COV_IDIR
git clone https://www.github.com/hashicorp/vault
cd vault
export COV_BUILD_BUILD_CMD="go build -o bin/vault"
time $COV_BUILD_BUILD_CMD
cov-scan