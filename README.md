# dashboard-protos
Protos repository for dashboard project.


## Installation

### Java
```
$ sudo apt-get update

$ sudo apt-get install openjdk-8-jdk

$ java -version
```

### NodeJS
```
$ curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -

$ sudo apt-get install -y nodejs
```

### Protobuf Compiler
Check for latest release https://github.com/protocolbuffers/protobuf/releases.
In my case it's 3.17.3.
```
$ PB_REL="https://github.com/protocolbuffers/protobuf/releases"

$ curl -LO $PB_REL/download/v3.17.3/protoc-3.17.3-linux-x86_64.zip

$ unzip protoc-3.15.8-linux-x86_64.zip -d $HOME/.local

$ export PATH="$PATH:$HOME/.local/bin"
```

### Generate protos
```
$ ./generateProtos.sh
```