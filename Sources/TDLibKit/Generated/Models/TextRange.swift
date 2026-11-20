//
//  TextRange.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-03220f6b
//  https://github.com/tdlib/td/tree/03220f6b
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

