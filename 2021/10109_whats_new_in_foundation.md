# What's new in `Foundation`

🎥 Video: https://developer.apple.com/wwdc21/10109

- `AttributedString`
    - way nicer API, `.link`, etc.
    - markdown support!
    - codable `CodableAtributedStringKey`, `MarkdownDecodableAttributedStringKey`
    - custom attributes API, attribute scopes

- Better localization
    - build settings "use compiler to extract swift strings"
    - automatic grammar agreement
    - custom attributes in markdown for localization
    - export / import strings via build process / file menu

- Formatters
    - new API! no need to always create formatters and cache them.
    - `date.formatted(...)`
    - `number.formatted(....)`
    - all 10 formatters supported
    - new "builder" pattern. so good!
    - https://nemecek.be/blog/106/new-approach-to-formatters-in-ios-15
