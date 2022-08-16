# Xcode 14

[Release notes](https://developer.apple.com/documentation/xcode-release-notes/xcode-14-release-notes)

> Xcode 14 enables a single target to support multiple platforms and conditionally include dependencies, code, resources, and build settings for specific platforms.

> Simplify an app icon with a single 1024x1024 image that is automatically resized for its target. Choose the Single Size option in the app icon’s Attributes inspector in the asset catalog. You can still override individual sizes with the All Sizes option.

### Protocols & Generics

> You can now use protocols with associated types and Self requirements as the types of values with the any keyword.

> Protocols can now declare a list of one or more primary associated types, which enable writing same-type requirements on those associated types using angle bracket syntax

> You can use protocols that adopt primary associated types with the any keyword to enable constrained existential types. This makes writing type-erasing wrappers for generic code much simpler because a separate wrapper type is no longer required.

> You can now use opaque types in the parameters of functions and subscripts when they provide a shorthand syntax for the introduction of a generic parameter.

### Optionals

You can now unwrap optional variables with a shorthand syntax that shadows the existing declaration.