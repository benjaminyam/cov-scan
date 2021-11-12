export PATH=/opt/coverity/bin:$(pwd):$PATH
repo_url=https://github.com/0c34/govwa
git clone $repo_url
repo_name=$(basename $repo_url)
cd $repo_name
#export COV_IDIR=/cache/idir/$repo_name
time go build
cov-scan
time cov-analyze --dir idir --strip-path /builds/benjamin.yam/cov-scan/consul --xx-use-buda-for-cs-and-java-security --all --security --webapp-security