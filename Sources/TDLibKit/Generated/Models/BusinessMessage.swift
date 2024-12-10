//
//  BusinessMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-437e7f9a
//  https://github.com/tdlib/td/tree/437e7f9a
//

import Foundation


/// Describes a message from a business account as received by a bot
public struct BusinessMessage: Codable, Equatable, Hashable {

    /// The message
    public let message: Message

    /// Message that is replied by the message in the same chat; may be null if none
    public let replyToMessage: Message?


    public init(
        message: Message,
        replyToMessage: Message?
    ) {
        self.message = message
        self.replyToMessage = replyToMessage
    }
}

