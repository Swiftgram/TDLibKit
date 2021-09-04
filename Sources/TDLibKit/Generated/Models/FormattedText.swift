//
//  FormattedText.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-7135caa
//  https://github.com/tdlib/td/tree/7135caa
//

import Foundation


/// A text with some entities
public struct FormattedText: Codable {

    /// Entities contained in the text. Entities can be nested, but must not mutually intersect with each other.//-Pre, Code and PreCode entities can't contain other entities. Bold, Italic, Underline and Strikethrough entities can contain and to be contained in all other entities. All other entities can't contain each other
    public let entities: [TextEntity]

    /// The text
    public let text: String


    public init(
        entities: [TextEntity],
        text: String
    ) {
        self.entities = entities
        self.text = text
    }
}
