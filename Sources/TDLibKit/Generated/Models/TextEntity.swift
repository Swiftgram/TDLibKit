//
//  TextEntity.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.16-d44617b4
//  https://github.com/tdlib/td/tree/d44617b4
//

import Foundation


/// Represents a part of the text that needs to be formatted in some unusual way
public struct TextEntity: Codable, Equatable, Hashable {

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

