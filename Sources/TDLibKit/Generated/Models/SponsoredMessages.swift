//
//  SponsoredMessages.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.15-a7f8ff6e
//  https://github.com/tdlib/td/tree/a7f8ff6e
//

import Foundation


/// Contains a list of sponsored messages
public struct SponsoredMessages: Codable, Equatable, Hashable {

    /// List of sponsored messages
    public let messages: [SponsoredMessage]

    /// The minimum number of messages between shown sponsored messages, or 0 if only one sponsored message must be shown after all ordinary messages
    public let messagesBetween: Int


    public init(
        messages: [SponsoredMessage],
        messagesBetween: Int
    ) {
        self.messages = messages
        self.messagesBetween = messagesBetween
    }
}

