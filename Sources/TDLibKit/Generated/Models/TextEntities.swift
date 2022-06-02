//
//  TextEntities.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.3-3ae2ec38
//  https://github.com/tdlib/td/tree/3ae2ec38
//

import Foundation


/// Contains a list of text entities
public struct TextEntities: Codable, Equatable {

    /// List of text entities
    public let entities: [TextEntity]


    public init(entities: [TextEntity]) {
        self.entities = entities
    }
}

