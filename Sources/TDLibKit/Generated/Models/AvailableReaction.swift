//
//  AvailableReaction.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
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

