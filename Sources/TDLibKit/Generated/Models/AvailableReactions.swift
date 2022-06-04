//
//  AvailableReactions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.3-e86b323d
//  https://github.com/tdlib/td/tree/e86b323d
//

import Foundation


/// Represents a list of available reactions
public struct AvailableReactions: Codable, Equatable {

    /// List of reactions
    public let reactions: [String]


    public init(reactions: [String]) {
        self.reactions = reactions
    }
}

