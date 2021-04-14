export PATH=/opt/coverity/bin:$(pwd):$PATH
# export COV_IDIR=/cache/idir/govwa
git clone https://github.com/0c34/govwa
cd govwa
time go build
cov-scan
cov-analyze --dir idir --strip-path /builds/benjamin.yam/cov-scan/govwa --xx-use-buda-for-cs-and-java-security --all --security --webapp-security