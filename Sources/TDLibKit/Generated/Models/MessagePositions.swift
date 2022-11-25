//
//  MessagePositions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.8-3ec53c8d
//  https://github.com/tdlib/td/tree/3ec53c8d
//

import Foundation


/// Contains a list of message positions
public struct MessagePositions: Codable, Equatable {

    /// List of message positions
    public let positions: [MessagePosition]

    /// Total number of messages found
    public let totalCount: Int


    public init(
        positions: [MessagePosition],
        totalCount: Int
    ) {
        self.positions = positions
        self.totalCount = totalCount
    }
}

