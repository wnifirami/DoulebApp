import ProjectDescription

let project = Project(
    name: "Douleb",
    targets: [
        .target(
            name: "App",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.Douleb",
            infoPlist: .default,
            sources: ["App/Sources/**"],
            resources: ["App/Resources/**"],
            dependencies: [
                .target(name: "Core"),
                .target(name: "Networking"),
                .target(name: "UIComponents"),
                .target(name: "FeatureHome"),
                .target(name: "FeatureProfile"),
                .target(name: "FeatureSettings")
            ]
        ),
        .target(
            name: "Core",
            destinations: .iOS,
            product: .framework,
            bundleId: "io.tuist.Douleb.Core",
            infoPlist: .default,
            sources: ["Core/Sources/**"],
            dependencies: []
        ),
        .target(
            name: "Networking",
            destinations: .iOS,
            product: .framework,
            bundleId: "io.tuist.Douleb.Networking",
            infoPlist: .default,
            sources: ["Networking/Sources/**"],
            dependencies: [.target(name: "Core")]
        ),
        .target(
            name: "UIComponents",
            destinations: .iOS,
            product: .framework,
            bundleId: "io.tuist.Douleb.UIComponents",
            infoPlist: .default,
            sources: ["UIComponents/Sources/**"],
            dependencies: []
        ),
        .target(
            name: "FeatureHome",
            destinations: .iOS,
            product: .framework,
            bundleId: "io.tuist.Douleb.FeatureHome",
            infoPlist: .default,
            sources: ["FeatureHome/Sources/**"],
            dependencies: [
                .target(name: "Core"),
                .target(name: "UIComponents")
            ]
        ),
        .target(
            name: "FeatureProfile",
            destinations: .iOS,
            product: .framework,
            bundleId: "io.tuist.Douleb.FeatureProfile",
            infoPlist: .default,
            sources: ["FeatureProfile/Sources/**"],
            dependencies: [
                .target(name: "Core"),
                .target(name: "UIComponents")
            ]
        ),
        .target(
            name: "FeatureSettings",
            destinations: .iOS,
            product: .framework,
            bundleId: "io.tuist.Douleb.FeatureSettings",
            infoPlist: .default,
            sources: ["FeatureSettings/Sources/**"],
            dependencies: [
                .target(name: "Core"),
                .target(name: "UIComponents")
            ]
        ),
        .target(
            name: "AppTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.DoulebTests",
            infoPlist: .default,
            sources: ["App/Tests/**"],
            dependencies: [.target(name: "App")]
        )
    ]
)
