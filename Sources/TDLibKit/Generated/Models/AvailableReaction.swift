//
//  AvailableReaction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.17-edb3d087
//  https://github.com/tdlib/td/tree/edb3d087
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

