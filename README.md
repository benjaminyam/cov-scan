# cov-scan
Description

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
