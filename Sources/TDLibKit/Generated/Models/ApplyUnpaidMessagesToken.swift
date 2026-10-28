//
//  ApplyUnpaidMessagesToken.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-fb464979
//  https://github.com/tdlib/td/tree/fb464979
//

import Foundation


/// Allows the current user to send unpaid messages to the given user, which requires payment for incoming messages, using a token from an internal link of the type internalLinkTypePublicChat, internalLinkTypeUserPhoneNumber, or internalLinkTypeUserToken. The first message sent to the user will be preceded by a messageUnpaidMessagesAllowedByLink message. Repeated calls and calls for the current user have no effect
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

