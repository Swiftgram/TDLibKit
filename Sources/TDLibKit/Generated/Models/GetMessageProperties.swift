//
//  GetMessageProperties.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.52-bc32c4b2
//  https://github.com/tdlib/td/tree/bc32c4b2
//

import Foundation


/// Returns properties of a message. This is an offline method
public struct GetMessageProperties: Codable, Equatable, Hashable {

    /// Chat identifier
    public let chatId: Int64?

    /// Identifier of the message
    public let messageId: Int64?


    public init(
        chatId: Int64?,
        messageId: Int64?
    ) {
        self.chatId = chatId
        self.messageId = messageId
    }
}

