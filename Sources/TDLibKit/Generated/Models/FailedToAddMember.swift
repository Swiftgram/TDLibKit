//
//  FailedToAddMember.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Contains information about a user that has failed to be added to a chat
public struct FailedToAddMember: Codable, Equatable, Hashable {

    /// True, if subscription to Telegram Premium is required to send the user chat invite link
    public let premiumRequiredToSendMessages: Bool

    /// True, if subscription to Telegram Premium would have allowed to add the user to the chat
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

