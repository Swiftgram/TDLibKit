//
//  SponsoredMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-b713d945
//  https://github.com/tdlib/td/tree/b713d945
//

import Foundation


/// Describes a sponsored message
public struct SponsoredMessage: Codable {

    /// Content of the message
    public let content: MessageContent

    /// Unique sponsored message identifier
    public let id: Data

    /// Chat identifier
    public let sponsorChatId: Int64

    /// Parameter for the bot start message if the sponsored chat is a chat with a bot
    public let startParameter: String


    public init(
        content: MessageContent,
        id: Data,
        sponsorChatId: Int64,
        startParameter: String
    ) {
        self.content = content
        self.id = id
        self.sponsorChatId = sponsorChatId
        self.startParameter = startParameter
    }
}

