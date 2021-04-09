export PATH=/opt/coverity/bin:$(pwd):$PATH
export COV_IDIR=/cache/idir/go-ipfs
git clone https://github.com/ipfs/go-ipfs
cd go-ipfs
cov-scan