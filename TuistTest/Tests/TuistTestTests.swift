import Foundation
import SnapshotTesting
import XCTest

@testable import TuistTest

final class TuistTestTests: XCTestCase {
  func testTextField() throws {
    let textField = MyTextFieldRepresentable()
    assertSnapshot(of: textField, as: .image)
  }
}
