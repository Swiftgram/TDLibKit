//
//  FoundPositions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-0ece11a1
//  https://github.com/tdlib/td/tree/0ece11a1
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

