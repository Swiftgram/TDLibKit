//
//  ApplyUnpaidMessagesToken.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Allows the current user to send unpaid messages to the given user, who requires payment for incoming messages, using a token from an internal link of the type internalLinkTypePublicChat, internalLinkTypeUserPhoneNumber, or internalLinkTypeUserToken. The first message sent to the user will be preceded by a messageUnpaidMessagesAllowedByLink message. Repeated calls and calls for the current user have no effect
public struct ApplyUnpaidMessagesToken: Codable, Equatable, Hashable {

    /// Token from the link
    public let token: String?

    /// Identifier of the user
    public let userId: Int64?


    public init(
        token: String?,
        userId: Int64?
    ) {
        self.token = token
        self.userId = userId
    }
}

