export PATH=/opt/coverity/bin:$(pwd):$PATH
export COV_IDIR=/cache/idir/vault
go get github.com/hashicorp/vault
mkdir vault
cd vault
COV_BUILD_BUILD_CMD="go build -a github.com/hashicorp/vault"
time $COV_BUILD_BUILD_CMD
cov-scan