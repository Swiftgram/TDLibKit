//
//  FailedToAddMember.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-18f0716b
//  https://github.com/tdlib/td/tree/18f0716b
//

import Foundation


/// Contains information about a user who has failed to be added to a chat
public struct FailedToAddMember: Codable, Equatable, Hashable {

    /// True, if a subscription to Telegram Premium is required to send the user a chat invite link
    public let premiumRequiredToSendMessages: Bool

    /// True, if a subscription to Telegram Premium would have allowed adding the user to the chat
    public let premiumWouldAllowInvite: Bool

    /// User identifier
    public let userId: Int64


    public init(
        premiumRequiredToSendMessages: Bool,
        premiumWouldAllowInvite: Bool,
        userId: Int64
    ) {
        self.premiumRequiredToSendMessages = premiumRequiredToSendMessages
        self.premiumWouldAllowInvite = premiumWouldAllowInvite
        self.userId = userId
    }
}

