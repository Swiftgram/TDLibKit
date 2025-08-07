//
//  BusinessMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.52-4269f54e
//  https://github.com/tdlib/td/tree/4269f54e
//

import Foundation


/// Contains a list of messages from a business account as received by a bot
public struct BusinessMessages: Codable, Equatable, Hashable {

    /// List of business messages
    public let messages: [BusinessMessage]


    public init(messages: [BusinessMessage]) {
        self.messages = messages
    }
}

