//
//  ToggleSupergroupCanHaveSponsoredMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Toggles whether sponsored messages are shown in the channel chat; requires owner privileges in the channel. The chat must have at least chatBoostFeatures.min_sponsored_message_disable_boost_level boost level to disable sponsored messages
public struct ToggleSupergroupCanHaveSponsoredMessages: Codable, Equatable, Hashable {

    /// The new value of can_have_sponsored_messages
    public let canHaveSponsoredMessages: Bool?

    /// The identifier of the channel
    public let supergroupId: Int64?


    public init(
        canHaveSponsoredMessages: Bool?,
        supergroupId: Int64?
    ) {
        self.canHaveSponsoredMessages = canHaveSponsoredMessages
        self.supergroupId = supergroupId
    }
}

