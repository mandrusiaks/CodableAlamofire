// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "CodableAlamofire",
    platforms: [
        .macOS(.v10_12),
        .iOS(.v10),
        .tvOS(.v10),
        .watchOS(.v3)
    ],
    products: [
        .library(name: "CodableAlamofire", targets: ["CodableAlamofire"]),
    ],
    dependencies: [
   		.package(url: "https://github.com/Alamofire/Alamofire", from: "5.0.0-beta.7")
    ],	
    targets: [
    	.target(
			name: "CodableAlamofire", 
    		dependencies: ["Alamofire"]
    	),
    	.testTarget(
	    	name: "CodableAlamofireTests", 
	    	dependencies: ["CodableAlamofire"]
	    )
  	],
    swiftLanguageVersions: [.v5]
)
