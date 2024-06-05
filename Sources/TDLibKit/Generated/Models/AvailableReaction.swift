//
//  AvailableReaction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.30-b102c3ad
//  https://github.com/tdlib/td/tree/b102c3ad
//

import Foundation


/// Represents an available reaction
public struct AvailableReaction: Codable, Equatable, Hashable {

    /// True, if Telegram Premium is needed to send the reaction
    public let needsPremium: Bool

    /// Type of the reaction
    public let type: ReactionType


    public init(
        needsPremium: Bool,
        type: ReactionType
    ) {
        self.needsPremium = needsPremium
        self.type = type
    }
}

