import ProjectDescription

let project = Project(
  name: "TuistTest",
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
        .project(target: "Payments", path: "Payments")
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
