import ProjectDescription

let project = Project(
  name: "Payments",
  targets: [
    .target(
      name: "Payments",
      destinations: .iOS,
      product: .framework,
      bundleId: "io.tuist.Payments",
      deploymentTargets: .iOS("16.0"),
      infoPlist: .default,
      sources: "Sources/**",
      dependencies: [
        .project(target: "SharedUI", path: "../SharedUI")
      ]
    ),
    .target(
      name: "PaymentsTests",
      destinations: .iOS,
      product: .unitTests,
      bundleId: "io.tuist.app.tests",
      deploymentTargets: .iOS("16.0"),
      infoPlist: .default,
      sources: "Tests/**",
      dependencies: [
        .target(name: "Payments"),
        .external(name: "SnapshotTesting")
      ]
    ),
  ]
)

