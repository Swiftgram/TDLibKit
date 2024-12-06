//
//  FoundPositions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-c85b20a4
//  https://github.com/tdlib/td/tree/c85b20a4
//

import Foundation


/// Contains 0-based positions of matched objects
public struct FoundPositions: Codable, Equatable, Hashable {

    /// The positions of the matched objects
    public let positions: [Int]

    /// Total number of matched objects
    public let totalCount: Int


    public init(
        positions: [Int],
        totalCount: Int
    ) {
        self.positions = positions
        self.totalCount = totalCount
    }
}

