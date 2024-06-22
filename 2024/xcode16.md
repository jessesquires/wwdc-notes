# Xcode 16

### [Release Notes](https://developer.apple.com/documentation/xcode-release-notes/xcode-16-release-notes)

Highlights

- Xcode 16 includes predictive code completion, powered by a machine learning model specifically trained for Swift and Apple SDKs. Predictive code completion requires a Mac with Apple silicon and 16GB of unified memory, running macOS 15.

- The Asset Catalog context menu has a new “Find References to Item” option that initiates an “Asset References” find for the selected asset.

- Beginning in Xcode 16, the build system coordinates with the Clang and Swift compilers to discover and build module dependencies of project sources as a set of explicit tasks in the build log. Explicitly built modules provide more actionable error messages when compilation errors are diagnosed, improve debugger performance, and allow the build system to make better scheduling decisions which maximize parallelism.

- Projects can incrementally migrate to Swift 6 by opting into features individually using the new build settings under Swift Compiler - Upcoming Features.

- Fixed: Xcode no longer changes the currently selected run destination implicitly when there is a transient loss of connectivity to the device. Xcode will keep the disconnected device selected with an indicator of its disconnected status.

- Errors and warnings are now emitted by the String Catalog editor when format specifier types in a translation conflict with those in the source string.

- You can now jump from an entry in a String Catalog to the usages of that string in source code.

- The Source Editor now supports jumping to the String Catalog that contains translations for the selected string literal.

- Warnings are now emitted by the String Catalog editor for stale strings.

- Explicitly-escaped quotation marks in Swift multi-line string literals are now properly supported.

- Xcode 16 introduces several new streamlined file creation workflows. Use “New Empty File” from the Project Navigator’s context menu to quickly create a new Swift file without any confirmation dialogs. Use Copy, Paste, and Duplicate from the Edit menu to create a new file from an existing file. Finally, you can cut text from the Source Editor, and then use the “New File from Clipboard” command while holding the option key in the Project Navigator’s context menu to quickly extract part of a source file into a new file.

- Minimize project file changes, and avoid version control conflicts with buildable folder references.
    - Convert an existing group to a buildable folder with the “Convert to Folder” context menu item in the Project Navigator. Buildable folders only record the folder path into the project file without enumerating the contained files. This minimizes diffs to the project when files are added and removed, and avoids source control conflicts with your team.
    - To use a folder as an opaque copiable resource, the default behavior before Xcode 16, uncheck the “Build Folder Contents” option in the File Inspector.

- Fixed: Xcode projects once again support package dependencies on packages in the same directory or a parent path. This support had been temporarily removed because it could cause Xcode to crash.

- Added support for EditorConfig. The editor now respects indentation settings given in `.editorconfig` files.

- The standard library now provides a new `indices(where:)` function which creates a `RangeSet` - a new type representing a set of discontiguous indices.

- Xcode 16 includes Swift Testing, an all-new testing framework built for Swift from the ground up. It includes expressive APIs that make it easy to write and organize tests.

- A new API on XCUIElement adds the ability to wait for any property on XCUIElement to become a value given a timeout. Also, waitForNonExistence has been added as a new API.

- XCTest has new API for performing a “double tap” hand gesture on Apple Watch from UI tests.

