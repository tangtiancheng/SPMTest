// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Baoming",
    platforms: [
        .iOS(.v8),
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        //产品定义了一个包产生的可执行文件和库，并使它们对其他包可见。
        .library(
            name: "Library1",//
            targets: ["TPpa1"]),
//        .library(
//            name: "Library2",//
//            targets: ["TPpa2"]),
        .library(
            name: "Library3",//一个lib下可以有多个target module   正常不需要, 一个对一个就行,名字也不需要取的不一样
            targets: ["TPpa3","TPpa4"]),
        
        
//        .library(name: "Library1-Dynamic", type: .dynamic, targets: ["TPpa1"]),
//        .library(name: "Library3-Dynamic", type: .dynamic, targets: ["TPpa3", "TPpa4"]),
       
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.依赖声明这个包所依赖的其他包。
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/kakaopensource/KakaJSON", from: "1.1.1"),
//        .package(url: "https://github.com/octree/ClockHandRotationKit", from: "1.0.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.目标是包的基本构建块。目标可以定义一个模块或一个测试套件。
        // Targets can depend on other targets in this package, and on products in packages this package depends on.目标可以依赖于这个包中的其他目标，也可以依赖于这个包所依赖的包中的产品。
        
        .target(
            name: "TPpa2",
            dependencies: []),
        .target(
            name: "TPpa3",
            dependencies: []),
        .target(
            name: "TPpa4",
            dependencies: []),
        .target(
            name: "TPpa1",
            dependencies: ["TPpa2", "ClockLocalRoK"]),//这个模块需要依赖于另一个模块
        
        .binaryTarget( //引入一些第三方库
            name: "ClockLocalRoK",
            path: "ClockHandRotationKit.xcframework"
        ),
        //这种别用了,都支持本地话了
//            .binaryTarget(
//                name: "Logging",
//                url: "https://github.com/wendyliga/compiled-framework-spm/releases/download/0.0.1/Logging.xcframework.zip",
//                checksum: "c246c715ac7f6fae9ef0a89e758a8514644071a164985b1e95d344a684d84621"
//            ),
        
        .testTarget(
            name: "TPpaTests",
            dependencies: ["TPpa1"]),
  
    ]
)
