
import Foundation
import Dynamo

#if os(Linux)
import Glibc
#endif

print( "Browse to http://localhost:8080/example" )

// create non-SSL server/proxy on 8080
_ = DynamoWebServer( portNumber: 8080, swiftlets: [
    LoggingSwiftlet( logger: dynamoTrace ),
    ExampleAppSwiftlet( pathPrefix: "/example" ),
    DocumentSwiftlet( documentRoot: "." )
] )

// only returns libdispatch implemented
sleep( 1000000 )
