export PATH=/opt/coverity/bin:$(pwd):$PATH
export COV_IDIR=/cache/idir/vault
git clone https://github.com/hashicorp/vault
cd vault
cov-scan