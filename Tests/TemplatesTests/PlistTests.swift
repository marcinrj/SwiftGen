//
// Templates UnitTests
// Copyright © 2019 SwiftGen
// MIT Licence
//

import StencilSwiftKit
import XCTest

class PlistTests: XCTestCase {
  enum Contexts {
    static let all = ["empty", "all"]
  }

  // generate variations to test customname generation
  let inlineVariations: VariationGenerator = { name, context in
    guard name == "all" else { return [(context: context, suffix: "")] }

    return [
      (context: context,
       suffix: ""),
      (context: try StencilContext.enrich(context: context,
                                          parameters: ["enumName=CustomPlist"]),
       suffix: "-customname"),
      (context: try StencilContext.enrich(context: context,
                                          parameters: ["publicAccess"]),
       suffix: "-publicAccess")
    ]
  }

  func testInlineSwift3() {
    test(template: "inline-swift3",
         contextNames: Contexts.all,
         directory: .plist,
         contextVariations: inlineVariations)
  }

  func testInlineSwift4() {
    test(template: "inline-swift4",
         contextNames: Contexts.all,
         directory: .plist,
         contextVariations: inlineVariations)
  }

  // generate variations to test customname generation
  let runtimeVariations: VariationGenerator = { name, context in
    guard name == "all" else { return [(context: context, suffix: "")] }

    return [
      (context: context,
       suffix: ""),
      (context: try StencilContext.enrich(context: context,
                                          parameters: ["enumName=CustomPlist"]),
       suffix: "-customname"),
      (context: try StencilContext.enrich(context: context,
                                          parameters: ["preservePath"]),
       suffix: "-preservePath"),
      (context: try StencilContext.enrich(context: context,
                                          parameters: ["publicAccess"]),
       suffix: "-publicAccess")
    ]
  }

  func testRuntimeSwift3() {
    test(template: "runtime-swift3",
         contextNames: Contexts.all,
         directory: .plist,
         contextVariations: runtimeVariations)
  }

  func testRuntimeSwift4() {
    test(template: "runtime-swift4",
         contextNames: Contexts.all,
         directory: .plist,
         contextVariations: runtimeVariations)
  }
}
