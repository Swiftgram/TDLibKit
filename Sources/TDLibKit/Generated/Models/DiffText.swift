//
//  DiffText.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-022d6020
//  https://github.com/tdlib/td/tree/022d6020
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

