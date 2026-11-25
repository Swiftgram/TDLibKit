//
//  TextRange.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Describes a part of a text
public struct TextRange: Codable, Equatable, Hashable {

    /// Length of the part, in UTF-16 code units
    public let length: Int

    /// Offset of the part, in UTF-16 code units
    public let offset: Int


    public init(
        length: Int,
        offset: Int
    ) {
        self.length = length
        self.offset = offset
    }
}

