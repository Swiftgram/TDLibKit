//
//  SponsoredMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.14-66234ae2
//  https://github.com/tdlib/td/tree/66234ae2
//

import Foundation


/// Describes a sponsored message
public struct SponsoredMessage: Codable, Equatable, Hashable {

    /// If non-empty, additional information about the sponsored message to be shown along with the message
    public let additionalInfo: String

    /// Content of the message. Currently, can be only of the type messageText
    public let content: MessageContent

    /// True, if the message needs to be labeled as "recommended" instead of "sponsored"
    public let isRecommended: Bool

    /// An internal link to be opened when the sponsored message is clicked; may be null if the sponsor chat needs to be opened instead
    public let link: InternalLinkType?

    /// Message identifier; unique for the chat to which the sponsored message belongs among both ordinary and sponsored messages
    public let messageId: Int64

    /// True, if the sponsor's chat photo must be shown
    public let showChatPhoto: Bool

    /// Sponsor chat identifier; 0 if the sponsor chat is accessible through an invite link
    public let sponsorChatId: Int64

    /// Information about the sponsor chat; may be null unless sponsor_chat_id == 0
    public let sponsorChatInfo: ChatInviteLinkInfo?

    /// If non-empty, information about the sponsor to be shown along with the message
    public let sponsorInfo: String


    public init(
        additionalInfo: String,
        content: MessageContent,
        isRecommended: Bool,
        link: InternalLinkType?,
        messageId: Int64,
        showChatPhoto: Bool,
        sponsorChatId: Int64,
        sponsorChatInfo: ChatInviteLinkInfo?,
        sponsorInfo: String
    ) {
        self.additionalInfo = additionalInfo
        self.content = content
        self.isRecommended = isRecommended
        self.link = link
        self.messageId = messageId
        self.showChatPhoto = showChatPhoto
        self.sponsorChatId = sponsorChatId
        self.sponsorChatInfo = sponsorChatInfo
        self.sponsorInfo = sponsorInfo
    }
}

