//
//  SponsoredMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.12-29e8df51
//  https://github.com/tdlib/td/tree/29e8df51
//

import Foundation


/// Describes a sponsored message
public struct SponsoredMessage: Codable, Equatable {

    /// Content of the message. Currently, can be only of the type messageText
    public let content: MessageContent

    /// An internal link to be opened when the sponsored message is clicked; may be null. If null, the sponsor chat needs to be opened instead
    public let link: InternalLinkType?

    /// Message identifier; unique for the chat to which the sponsored message belongs among both ordinary and sponsored messages
    public let messageId: Int64

    /// Chat identifier
    public let sponsorChatId: Int64


    public init(
        content: MessageContent,
        link: InternalLinkType?,
        messageId: Int64,
        sponsorChatId: Int64
    ) {
        self.content = content
        self.link = link
        self.messageId = messageId
        self.sponsorChatId = sponsorChatId
    }
}

