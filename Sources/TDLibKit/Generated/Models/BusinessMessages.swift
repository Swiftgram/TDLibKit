//
//  BusinessMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.34-81dc2e24
//  https://github.com/tdlib/td/tree/81dc2e24
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

