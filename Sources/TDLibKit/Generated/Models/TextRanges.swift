//
//  TextRanges.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-ad2c1516
//  https://github.com/tdlib/td/tree/ad2c1516
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

