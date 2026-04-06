//
//  DiffText.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.63-1677a0c7
//  https://github.com/tdlib/td/tree/1677a0c7
//

import Foundation


/// A text with some changes highlighted
public struct DiffText: Codable, Equatable, Hashable {

    /// Entities describing changes in the text. Entities doesn't mutually intersect with each other
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

