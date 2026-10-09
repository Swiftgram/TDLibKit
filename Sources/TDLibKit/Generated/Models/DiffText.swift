//
//  DiffText.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-c15d3f5a
//  https://github.com/tdlib/td/tree/c15d3f5a
//

import Foundation


/// A text with some changes highlighted
public struct DiffText: Codable, Equatable, Hashable {

    /// Entities describing changes in the text. Entities don't mutually intersect with each other
    public let entities: [DiffEntity]

    /// The text
    public let text: String


    public init(
        entities: [DiffEntity],
        text: String
    ) {
        self.entities = entities
        self.text = text
    }
}

