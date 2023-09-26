//
//  GetStoryAvailableReactions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.19-0d16085d
//  https://github.com/tdlib/td/tree/0d16085d
//

import Foundation


/// Returns reactions, which can be chosen for a story
public struct GetStoryAvailableReactions: Codable, Equatable, Hashable {

    /// Number of reaction per row, 5-25
    public let rowSize: Int?


    public init(rowSize: Int?) {
        self.rowSize = rowSize
    }
}

