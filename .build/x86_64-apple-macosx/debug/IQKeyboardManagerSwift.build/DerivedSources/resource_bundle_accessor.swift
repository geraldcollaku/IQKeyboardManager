import Foundation

extension Foundation.Bundle {
    static let module: Bundle = {
        let mainPath = Bundle.main.bundleURL.appendingPathComponent("IQKeyboardManagerSwift_IQKeyboardManagerSwift.bundle").path
        let buildPath = "/Users/gerald.collaku/IQKeyboardManager/.build/x86_64-apple-macosx/debug/IQKeyboardManagerSwift_IQKeyboardManagerSwift.bundle"

        let preferredBundle = Bundle(path: mainPath)

        guard let bundle = preferredBundle ?? Bundle(path: buildPath) else {
            // Users can write a function called fatalError themselves, we should be resilient against that.
            Swift.fatalError("could not load resource bundle: from \(mainPath) or \(buildPath)")
        }

        return bundle
    }()
}