//
//  QuickReplyMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-fb04b8d4
//  https://github.com/tdlib/td/tree/fb04b8d4
//

import Foundation


/// Contains a list of quick reply messages
public struct QuickReplyMessages: Codable, Equatable, Hashable {

    /// List of quick reply messages; messages may be null
    public let messages: [QuickReplyMessage]?


    public init(messages: [QuickReplyMessage]?) {
        self.messages = messages
    }
}

