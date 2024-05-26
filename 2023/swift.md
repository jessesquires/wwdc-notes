# Swift

## Swift 5.9

- [Swift.org - Swift 5.9 Released](https://www.swift.org/blog/swift-5.9-released/)
- [What’s new in Swift 5.9? – Hacking with Swift](https://www.hackingwithswift.com/articles/258/whats-new-in-swift-5-9)

## Swift Structured Concurrency

### 🎥 [Beyond the basics of structured concurrency](https://developer.apple.com/videos/play/wwdc2023/10170/)

- Prefer `async let`, `withTaskGroup()`
- Avoid `Task.init`, `Task.detached`
- Tasks do not enforce order
- Must check for cancellation, not automatic
- Child tasks inherit priority from parent
- Priority escalation (to address priority inversion)
- Task-local values
    - attach metadata to current task
    - inherited by child tasks
    - propagate context
- New: `withDiscardingTaskGroup { }`
- Swift Log: `Logger.MetadataProvider`
- Swift Distributed Tracing (similar to Swift Log and Swift Metrics)

## Macros

- [krzysztofzablocki/Swift-Macros: A curated list of awesome Swift Macros](https://github.com/krzysztofzablocki/Swift-Macros)
