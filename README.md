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
## Variables
Here are variables that can be set prior to running the script and are recommended in the following context but can be set accordingly to fit your setup

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

### Project-based Variables
All project-based variables have defaults and these can be overridden by setting the variabkes before running the script.

Overriding 
COV_BUILD_BUILD_CMD=${COV_BUILD_BUILD_CMD-""}
COV_CAPTURE_FLAGS=${COV_CAPTURE_FLAGS-""}

COV_ANALYZE_QUALITY=${COV_ANALYZE_QUALITY-1}
COV_ANALYZE_SECURITY=${COV_ANALYZE_SECURITY-1}
COV_ANALYZE_DISTRUST_ALL=${COV_ANALYZE_DISTRUST_ALL-0}
COV_ANALYZE_AUDIT_CHECKERS=${COV_ANALYZE_AUDIT_CHECKERS-0}
COV_ANALYZE_FLAGS=${COV_ANALYZE_FLAGS-""}

COV_PROJECT=${COV_PROJECT-$(basename `git rev-parse --show-toplevel`)}
COV_STREAM=${COV_STREAM-$COV_PROJECT-$(git rev-parse --abbrev-ref HEAD)}

