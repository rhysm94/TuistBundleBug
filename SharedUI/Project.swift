import ProjectDescription

let project = Project(
  name: "SharedUI",
  targets: [
    .target(
      name: "SharedUI",
      destinations: .iOS,
      product: .framework,
      bundleId: "io.tuist.app",
      deploymentTargets: .iOS("16.0"),
      infoPlist: .default,
      sources: "Sources/**",
      dependencies: [
        .external(name: "Stripe"),
      ]
    ),
    .target(
      name: "SharedUITests",
      destinations: .iOS,
      product: .unitTests,
      bundleId: "co.rhysmorgan.TuistTest.SharedUITests",
      sources: "Tests/**",
      dependencies: [
        .target(name: "SharedUI")
      ]
    ),
  ]
)

