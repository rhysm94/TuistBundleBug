import ProjectDescription

let project = Project(
  name: "TuistTest",
  packages: [
    .remote(url: "https://github.com/stripe/stripe-ios-spm", requirement: .exact("23.27.3")),
    .remote(url: "https://github.com/pointfreeco/swift-snapshot-testing", requirement: .exact("1.17.5")),
  ],
  targets: [
    .target(
      name: "TuistTest",
      destinations: .iOS,
      product: .app,
      bundleId: "io.tuist.TuistTest",
      infoPlist: .extendingDefault(
        with: [
          "UILaunchScreen": [
            "UIColorName": "",
            "UIImageName": "",
          ],
        ]
      ),
      sources: ["TuistTest/Sources/**"],
      resources: ["TuistTest/Resources/**"],
      dependencies: [
        .target(name: "Payments")
      ]
    ),
    .target(
      name: "SharedUI",
      destinations: .iOS,
      product: .framework,
      bundleId: "co.rhysmorgan.TuistTest.sharedUI",
      sources: ["SharedUI/Sources/**"],
      dependencies: [
        .package(product: "Stripe")
      ]
    ),
    .target(
      name: "SharedUITests",
      destinations: .iOS,
      product: .unitTests,
      bundleId: "co.rhysmorgan.TuistTest.SharedUITests",
      sources: ["SharedUI/Tests/**"],
      dependencies: [
        .target(name: "SharedUI")
      ]
    ),
    .target(
      name: "Payments",
      destinations: .iOS,
      product: .framework,
      bundleId: "co.rhysmorgan.TuistTest.Payments",
      sources: ["Payments/Sources/**"],
      dependencies: [
        .target(name: "SharedUI")
      ]
    ),
    .target(
      name: "PaymentsTests",
      destinations: .iOS,
      product: .unitTests,
      bundleId: "co.rhysmorgan.TuistTest.PaymentsTests",
      sources: ["Payments/Tests/**"],
      dependencies: [
        .target(name: "Payments"),
        .package(product: "SnapshotTesting")
      ]
    ),
    .target(
      name: "TuistTestTests",
      destinations: .iOS,
      product: .unitTests,
      bundleId: "io.tuist.TuistTestTests",
      infoPlist: .default,
      sources: ["TuistTest/Tests/**"],
      resources: [],
      dependencies: [
        .target(name: "TuistTest")
      ]
    ),
  ]
)
