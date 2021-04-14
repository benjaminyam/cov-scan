export PATH=/opt/coverity/bin:$(pwd):$PATH
# export COV_IDIR=/cache/idir/hugo
git clone https://github.com/gohugoio/hugo
cd hugo
time go build
cov-scan
cov-analyze --dir idir --strip-path /builds/benjamin.yam/cov-scan/hugo --xx-use-buda-for-cs-and-java-security --all --security --webapp-security