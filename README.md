# cov-scan
## Source Code Langage Supported
Description

### Auto-build Systems Supported
- Dotnet (Msbuild)
- Go
- Gradle
- Maven
- Npm
- Yarn
- Make

## Prerequisites
### Platform Support
The platforms supported are:
- Linux and 
- macOS
The specific platforms used in testing are Ubuntu 18.04 and macOS 11.

### Packages deployed
- this cov-scan project
- cov-analysis installed (based on the platform)

## Setup
### Environmental (Persistent) Variables
These variables rarely change from project to project and thus it makes sense to set these variables as environmental. 
- PATH (add to)
    - cov-scan folder
    - cov-analysis bin folder
- COV_USER: Coverity username
- COVERITY_PASSPHRASE: Coverity user password or access key
- COV_URL: Coverity URL

Some suggestions for persistent locations are /etc/environment, /etc/profile for host or ~/.bashrc or ~/.profile for user

Example:
```
export PATH=$HOME\cov-scan:$HOME\cov-analysis\bin:$PATH
export COV_USER=johndoe
export COVERITY_PASSPHRASE=AC9FA40A5D8BBB4BC3D923E170514F64
export COV_URL=https://synopsys.company.com
```

## Scanning Source Code
### Project-based Variables
All project-based variables have defaults and these can be overridden by setting the variabkes before running the script.

#### Overriding Project/Streams Names
By default, if the project is 
```
COV_PROJECT="WebGoat"
COV_STREAM="WebGoat"
```

#### Overriding Auto-Capture and Analysis Category Flags
If auto-capture is used, please ignore setting these variables. If these variables are used, they can be used individually or together. Setting these variables overrides the auto-detection and the analysis flags further below. For specific options, please refer to Coverity documentation
```
COV_BUILD_BUILD_CMD=mvn clean compile
COV_CAPTURE_FLAGS=--source-dir . --language javascript
COV_ANALYZE_FLAGS=--all --webapp-security
```


COV_ANALYZE_QUALITY=${COV_ANALYZE_QUALITY-1}
COV_ANALYZE_SECURITY=${COV_ANALYZE_SECURITY-1}
COV_ANALYZE_DISTRUST_ALL=${COV_ANALYZE_DISTRUST_ALL-0}
COV_ANALYZE_AUDIT_CHECKERS=${COV_ANALYZE_AUDIT_CHECKERS-0}



