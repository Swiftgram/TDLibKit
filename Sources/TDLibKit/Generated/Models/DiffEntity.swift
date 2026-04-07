//
//  DiffEntity.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.63-8ff05a0e
//  https://github.com/tdlib/td/tree/8ff05a0e
//

import Foundation


/// Represents a change of a text
public struct DiffEntity: Codable, Equatable, Hashable {

    /// Length of the entity, in UTF-16 code units
    public let length: Int

    /// Offset of the entity, in UTF-16 code units
    public let offset: Int

    /// Type of the entity
    public let type: DiffEntityType


    public init(
        length: Int,
        offset: Int,
        type: DiffEntityType
    ) {
        self.length = length
        self.offset = offset
        self.type = type
    }
}

