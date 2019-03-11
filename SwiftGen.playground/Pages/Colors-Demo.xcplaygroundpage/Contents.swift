//: #### Other pages
//:
//: * Demo for `swiftgen colors`
//: * [Demo for `swiftgen coredata`](CoreData-Demo)
//: * [Demo for `swiftgen fonts`](Fonts-Demo)
//: * [Demo for `swiftgen ib`](InterfaceBuilder-Demo)
//: * [Demo for `swiftgen json`](JSON-Demo)
//: * [Demo for `swiftgen plist`](Plist-Demo)
//: * [Demo for `swiftgen strings`](Strings-Demo)
//: * [Demo for `swiftgen xcassets`](XCAssets-Demo)
//: * [Demo for `swiftgen yaml`](YAML-Demo)

//: #### Example of code generated by `swiftgen colors` with "literals-swift4" template

#if os(OSX)
  import AppKit
  internal enum ColorName { }
#elseif os(iOS) || os(tvOS) || os(watchOS)
  import UIKit
  internal enum ColorName { }
#endif

// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length

// MARK: - Colors

// swiftlint:disable identifier_name line_length type_body_length
internal extension ColorName {
  /// 0x339666ff (r: 51, g: 150, b: 102, a: 255)
  internal static let articleBody = #colorLiteral(red: 0.2, green: 0.588235, blue: 0.4, alpha: 1.0)
  /// 0xff66ccff (r: 255, g: 102, b: 204, a: 255)
  internal static let articleFootnote = #colorLiteral(red: 1.0, green: 0.4, blue: 0.8, alpha: 1.0)
  /// 0x33fe66ff (r: 51, g: 254, b: 102, a: 255)
  internal static let articleTitle = #colorLiteral(red: 0.2, green: 0.996078, blue: 0.4, alpha: 1.0)
  /// 0xffffffcc (r: 255, g: 255, b: 255, a: 204)
  internal static let `private` = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 0.8)
}
// swiftlint:enable identifier_name line_length type_body_length

//: #### Usage Example

let view = UILabel(frame: .zero)

view.textColor = ColorName.articleBody
view.backgroundColor = ColorName.private
