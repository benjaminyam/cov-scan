export PATH=/opt/coverity/bin:$(pwd):$PATH
git clone https://github.com/WebGoat/WebGoat
cd WebGoat
git checkout tags/v8.1.0
# cov-scan
cov-build --dir idir mvn clean compile -DskipTests -Dmaven.test.skip=true
cov-capture --dir idir --source-dir . --language javascript
cov-analyze --dir idir --strip-path $(pwd) --all --security --webapp-security
cov-commit-defects --dir idir --url https://ec2-122-248-241-219.ap-southeast-1.compute.amazonaws.com:8443 --on-new-cert trust --stream WebGoat-HEAD