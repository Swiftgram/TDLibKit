//
//  SponsoredMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-5f19e026
//  https://github.com/tdlib/td/tree/5f19e026
//

import Foundation


/// Describes a sponsored message
public struct SponsoredMessage: Codable {

    /// Content of the message
    public let content: MessageContent

    /// Unique sponsored message identifier
    public let id: Int

    /// Chat identifier
    public let sponsorChatId: Int64

    /// Parameter for the bot start message if the sponsored chat is a chat with a bot
    public let startParameter: String


    public init(
        content: MessageContent,
        id: Int,
        sponsorChatId: Int64,
        startParameter: String
    ) {
        self.content = content
        self.id = id
        self.sponsorChatId = sponsorChatId
        self.startParameter = startParameter
    }
}

