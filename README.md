# podcast-protos
Protos repository for podcast project.

## Usage

### Java
Adjust repositories section with reference to jitpack
```
repositories {
    mavenCentral()
    maven {
        url 'https://jitpack.io'
    }
}
```

Add this to your dependencies
```
implementation 'com.github.alexey-ulashchick:podcast-protos:1.0.46'
```

### Typescript
Adjust your `package.json` accordingly:
```
"@alexey-ulashchick/podcast-protos": "^1.0.31",
```

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
In my case it's 3.19.4 and my platform is MacOS.
```
$ PB_REL="https://github.com/protocolbuffers/protobuf/releases"

$ curl -LO $PB_REL/download/v3.19.4/protoc-3.19.4-osx-x86_64.zip

$ unzip protoc-3.19.4-osx-x86_64.zip -d $HOME/.local

$ export PATH="$PATH:$HOME/.local/bin"
```

### Code Generator Plugin
Check for latest release https://github.com/grpc/grpc-web/releases.
In my case it's 1.3.1 and my platform is MacOS.
```
$ PB_REL="https://github.com/grpc/grpc-web/releases"

$ curl -LO $PB_REL/download/1.3.1/protoc-gen-grpc-web-1.3.1-darwin-x86_64

$ mv protoc-gen-grpc-web-1.3.1-darwin-x86_64 $HOME/.local/bin/protoc-gen-grpc-web

$ chmod +x $HOME/.local/bin/protoc-gen-grpc-web
```

### Generate protos
```
$ ./generateProtos.sh
```