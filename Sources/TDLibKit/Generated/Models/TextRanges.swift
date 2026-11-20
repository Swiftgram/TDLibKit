//
//  TextRanges.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-03220f6b
//  https://github.com/tdlib/td/tree/03220f6b
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

