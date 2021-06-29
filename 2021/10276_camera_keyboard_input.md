## Camera for keyboard input

🎥 Video: https://developer.apple.com/wwdc21/10276

- Filter content using `UITextContentType` (also used for auto-fill!) and `UIKeyboardType`
    - See "AutoFill everywhere" WWDC20
    - Set `.autocorrectionType` to `.no` if possible
- `UIAction.captureTextFromCamera(...)`
    - check `canPerformAction` first!
