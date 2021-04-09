export PATH=/opt/coverity/bin:$(pwd):$PATH
export COV_IDIR=/cache/idir/vault
git clone github.com/hashicorp/vault
cd vault
cov-scan