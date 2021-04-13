export PATH=/opt/coverity/bin:$(pwd):$PATH
export COV_IDIR=/cache/idir/vault
git clone https://www.github.com/hashicorp/vault
mkdir vault
cd vault
COV_BUILD_BUILD_CMD="make bootstrap"
time $COV_BUILD_BUILD_CMD
cov-scan