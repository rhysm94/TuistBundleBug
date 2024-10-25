import SharedUI
import SwiftUI

public struct ContentView: View {
  public init() {}

  public var body: some View {
    PaymentTextFieldRepresentable()
  }
}


struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
