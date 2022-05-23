//
//  AvailableReactions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.3-c2a580bb
//  https://github.com/tdlib/td/tree/c2a580bb
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

