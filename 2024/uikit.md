# UIKit

## Sessions

### 🎥 [What’s new in UIKit](https://developer.apple.com/wwdc24/10118)

- New document launch experience (document-based apps)
    - [Evolve your document launch experience](https://developer.apple.com/wwdc24/10132)
- New TabBar design on iPad (it sucks)
    - [Elevate your tab and sidebar experience in iPadOS](https://developer.apple.com/wwdc24/10147)
- Fluid transtions
    - New "Zoom" transition
    - Navigation and Presentations
    - Interactive and interruptible
- UIKit and Swift interop
    - [Enhance your UI animations and transitions](https://developer.apple.com/wwdc24/10145)
    - Use SwiftUI animations from UIKit
    - Gesture recognizers: systems have been unified
    - Add UIKit gesture recognizers to SwiftUI, `UIGestureRecognizerRepresentable`

**General Enhancements**

- Automatic trait tracking. Maximum performance with minimal dependencies.
- List improvements
    - `UITraitCollection.listEnvironment`
    - `UIListContentConfiguration`
- Update link: [`UIUpdateLink`](https://developer.apple.com/documentation/uikit/uiupdatelink) (similar to `CADisplayLink` but better)
    - view tracking
    - low latency
    - better performance
- Symbol animations
    - New effects:
        - `.wiggle`
        - `.breathe`
        - `.rotate`
    - repeat `.periodic(_:, delay:)` and `.continuous`
    - `.replace.magic()` effect improved
    - [What’s new in SF Symbols 6](https://developer.apple.com/wwdc24/10188)
- Sensory feedback
    - `UICanvasFeedbackGenerator`
- Text improvements
    - New text formatting panel
    - `textView.allowsEditingTextAttributes`
    - `NSAttributedString`: `.TextHighlightStyle`, `.TextHighlightColorScheme`
    - `UITextFormattingViewController`
    - Writing Tools support
        - `UITextView`, built-in support
- Menu Actions
    - `UICommand`, `UIKeyCommand`, `UIAction`
    - iPhone Mirroring --> Mac Keyboard
    - [Take your iPad apps to the next level](https://developer.apple.com/wwdc21/10057)
- PencilKit
    - Squeeze gesture
    - Haptics
    - Barrel roll angle
    - Undo slider
    - Configure `PKToolPicker`
    - Add your custom tools

## Blogs

- [iOS 18: Notable UIKit Additions](https://www.swiftjectivec.com/ios-18-notable-uikit-additions/)
