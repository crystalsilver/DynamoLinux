
import Foundation
import Dynamo

#if os(Linux)
import Glibc
#endif

system( "tar xfz site.tgz -C ~" )

// create non-SSL server/proxy on 8080
_ = DynamoWebServer( portNumber: 8080, swiftlets: [
    LoggingSwiftlet( logger: dynamoTrace ),
    ExampleAppSwiftlet( pathPrefix: "/example" ),
    SessionSwiftlet( pathPrefix: "/ticktacktoe",  appClass: TickTackToeSwiftlet.self, cookieName: "TTT" ),
    DocumentSwiftlet( documentRoot: String.fromCString( getenv( "HOME" ) )!+"/Sites" )
] )

// only returns when libdispatch implemented
sleep( 1000000 )
