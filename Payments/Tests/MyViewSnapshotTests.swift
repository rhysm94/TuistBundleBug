//
//  MyViewSnapshotTests.swift
//  PaymentsTests
//
//  Created by Rhys Morgan on 17/10/2024.
//

import Payments
import SnapshotTesting
import XCTest

final class MyViewSnapshotTests: XCTestCase {
  func testMyViewSnapshot() {
    assertSnapshot(of: MyView(), as: .image)
  }
}
