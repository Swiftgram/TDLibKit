//
//  GetStoryAvailableReactions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-18f0716b
//  https://github.com/tdlib/td/tree/18f0716b
//

import Foundation


/// Returns reactions that can be chosen for a story
public struct GetStoryAvailableReactions: Codable, Equatable, Hashable {

    /// Number of reactions per row; 5-25
    public let rowSize: Int?


    public init(rowSize: Int?) {
        self.rowSize = rowSize
    }
}

