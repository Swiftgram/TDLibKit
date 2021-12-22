//
//  SponsoredMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.10-3ff97237
//  https://github.com/tdlib/td/tree/3ff97237
//

import Foundation


/// Describes a sponsored message
public struct SponsoredMessage: Codable, Equatable {

    /// Content of the message. Currently, can be only of the type messageText
    public let content: MessageContent

    /// Unique sponsored message identifier
    public let id: Int

    /// An internal link to be opened when the sponsored message is clicked; may be null. If null, the sponsor chat needs to be opened instead
    public let link: InternalLinkType?

    /// Chat identifier
    public let sponsorChatId: Int64


    public init(
        content: MessageContent,
        id: Int,
        link: InternalLinkType?,
        sponsorChatId: Int64
    ) {
        self.content = content
        self.id = id
        self.link = link
        self.sponsorChatId = sponsorChatId
    }
}

