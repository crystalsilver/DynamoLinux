### DynamoLinux - Dynamo Web Server for Linux hosts

This project demonstrates a port of the Dynamo Web server to Linux. To run execute the following commands:

    git clone https://github.com/johnno1962/DynamoLinux.git
    cd DynamoLinux
    swift build
    .build/debug/dynamod

All being well you can then browse to http://localhost:8080/ for examples including
dynamic and from "Swiftlets" static content from html documentation. As libdispatch
is not available on Linux yet the server runs threaded using compatibility code from
[NSLinux](https://github.com/johnno1962/NSLinux). The Dynamo server is available under
an MIT license at [https://github.com/johnno1962/Dynamo](https://github.com/johnno1962/Dynamo).
