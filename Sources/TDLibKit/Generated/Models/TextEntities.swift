//
//  TextEntities.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-4e802d67
//  https://github.com/tdlib/td/tree/4e802d67
//

import Foundation


/// Contains a list of text entities
public struct TextEntities: Codable {

    /// List of text entities
    public let entities: [TextEntity]


    public init(entities: [TextEntity]) {
        self.entities = entities
    }
}

