//
//  ChatMessageSender.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-4e0c0009
//  https://github.com/tdlib/td/tree/4e0c0009
//

import Foundation


/// Represents a message sender, which can be used to send messages in a chat
public struct ChatMessageSender: Codable, Equatable, Hashable {

    /// True, if Telegram Premium is needed to use the message sender
    public let needsPremium: Bool

    /// The message sender
    public let sender: MessageSender


    public init(
        needsPremium: Bool,
        sender: MessageSender
    ) {
        self.needsPremium = needsPremium
        self.sender = sender
    }
}

