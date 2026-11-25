//
//  TextRanges.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Contains a list of text parts
public struct TextRanges: Codable, Equatable, Hashable {

    /// List of text parts
    public let ranges: [TextRange]


    public init(ranges: [TextRange]) {
        self.ranges = ranges
    }
}

