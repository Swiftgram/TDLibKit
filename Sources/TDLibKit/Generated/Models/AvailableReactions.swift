//
//  AvailableReactions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Represents a list of reactions that can be added to a message
public struct AvailableReactions: Codable, Equatable, Hashable {

    /// True, if any custom emoji reaction can be added by Telegram Premium subscribers
    public let allowCustomEmoji: Bool

    /// True, if the reactions will be tags and the message can be found by them
    public let areTags: Bool

    /// List of popular reactions
    public let popularReactions: [AvailableReaction]

    /// List of recently used reactions
    public let recentReactions: [AvailableReaction]

    /// List of reactions to be shown at the top
    public let topReactions: [AvailableReaction]

    /// The reason why the current user can't add reactions to the message, despite some other users can; may be null if none
    public let unavailabilityReason: ReactionUnavailabilityReason?


    public init(
        allowCustomEmoji: Bool,
        areTags: Bool,
        popularReactions: [AvailableReaction],
        recentReactions: [AvailableReaction],
        topReactions: [AvailableReaction],
        unavailabilityReason: ReactionUnavailabilityReason?
    ) {
        self.allowCustomEmoji = allowCustomEmoji
        self.areTags = areTags
        self.popularReactions = popularReactions
        self.recentReactions = recentReactions
        self.topReactions = topReactions
        self.unavailabilityReason = unavailabilityReason
    }
}

