export PATH=/opt/coverity/bin:$(pwd):$PATH
# export COV_IDIR=/cache/idir/vault
git clone https://www.github.com/hashicorp/vault
cd vault
export COV_BUILD_BUILD_CMD="go build -o bin/vault"
time $COV_BUILD_BUILD_CMD
cov-scan
time cov-analyze --dir idir --strip-path /builds/benjamin.yam/cov-scan/vault --xx-use-buda-for-cs-and-java-security --all --security --webapp-security