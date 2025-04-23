//
//  BusinessMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.47-6e32e56b
//  https://github.com/tdlib/td/tree/6e32e56b
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

