export PATH=/opt/coverity/bin:$(pwd):$PATH
git clone https://github.com/WebGoat/WebGoat
cd WebGoat
git checkout tags/v8.1.0
# cov-scan
cov-build --dir idir mvn clean compile -DskipTests -Dmaven.test.skip=true
cov-capture --dir idir --source-dir . --language javascript
cov-analyze --dir idir --strip-path $(pwd) --all --security --webapp-security --android-security
