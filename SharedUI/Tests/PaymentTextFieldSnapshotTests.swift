//
//  PaymentTextFieldSnapshotTests.swift
//  TuistTest
//
//  Created by Rhys Morgan on 17/10/2024.
//

import SharedUI
import SnapshotTesting
import XCTest

final class PaymentTextFieldSnapshotTests: XCTestCase {
  func testSnapshot() throws {
    let view = PaymentTextField()
    assertSnapshot(of: view, as: .image)
  }
}
