export PATH=/opt/coverity/bin:$(pwd):$PATH
git clone https://github.com/tachiyomiorg/tachiyomi
cd tachiyomi
git checkout tags/v0.9.2
export COV_IDIR=/cache/idir/tachiyomi
cov-scan