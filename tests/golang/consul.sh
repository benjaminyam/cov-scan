export PATH=/opt/coverity/bin:$(pwd):$PATH
repo_url=https://github.com/hashicorp/consul
git clone $repo_url
repo_name=$(basename $repo_url)
cd $repo_name
#export COV_IDIR=/cache/idir/$repo_name
time go build
cov-scan
time cov-analyze --dir idir --strip-path /builds/benjamin.yam/cov-scan/$repo_name --xx-use-buda-for-cs-and-java-security --all --security --webapp-security