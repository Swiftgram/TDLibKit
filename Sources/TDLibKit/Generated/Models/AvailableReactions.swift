//
//  AvailableReactions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-906d773d
//  https://github.com/tdlib/td/tree/906d773d
//

import Foundation


/// Represents a list of available reactions
public struct AvailableReactions: Codable, Equatable {

    /// List of reactions
    public let reactions: [AvailableReaction]


    public init(reactions: [AvailableReaction]) {
        self.reactions = reactions
    }
}

