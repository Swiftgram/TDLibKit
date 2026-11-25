//
//  MessagePositions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Contains a list of message positions
public struct MessagePositions: Codable, Equatable, Hashable {

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

