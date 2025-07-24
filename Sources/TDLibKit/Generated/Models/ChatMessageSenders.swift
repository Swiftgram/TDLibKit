//
//  ChatMessageSenders.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Represents a list of message senders, which can be used to send messages in a chat
public struct ChatMessageSenders: Codable, Equatable, Hashable {

    /// List of available message senders
    public let senders: [ChatMessageSender]


    public init(senders: [ChatMessageSender]) {
        self.senders = senders
    }
}

