//
//  TextEntity.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-07b7faf6
//  https://github.com/tdlib/td/tree/07b7faf6
//

import Foundation


/// Represents a part of the text that needs to be formatted in some unusual way
public struct TextEntity: Codable, Equatable {

    /// Length of the entity, in UTF-16 code units
    public let length: Int

    /// Offset of the entity, in UTF-16 code units
    public let offset: Int

    /// Type of the entity
    public let type: TextEntityType


    public init(
        length: Int,
        offset: Int,
        type: TextEntityType
    ) {
        self.length = length
        self.offset = offset
        self.type = type
    }
}

