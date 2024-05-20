//
//  SponsoredMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes a sponsored message
public struct SponsoredMessage: Codable, Equatable, Hashable {

    /// Identifier of the accent color for title, button text and message background
    public let accentColorId: Int

    /// If non-empty, additional information about the sponsored message to be shown along with the message
    public let additionalInfo: String

    /// Identifier of a custom emoji to be shown on the message background; 0 if none
    public let backgroundCustomEmojiId: TdInt64

    /// Text for the message action button
    public let buttonText: String

    /// True, if the message can be reported to Telegram moderators through reportChatSponsoredMessage
    public let canBeReported: Bool

    /// Content of the message. Currently, can be only of the type messageText
    public let content: MessageContent

    /// True, if the message needs to be labeled as "recommended" instead of "sponsored"
    public let isRecommended: Bool

    /// Message identifier; unique for the chat to which the sponsored message belongs among both ordinary and sponsored messages
    public let messageId: Int64

    /// Information about the sponsor of the message
    public let sponsor: MessageSponsor

    /// Title of the sponsored message
    public let title: String


    public init(
        accentColorId: Int,
        additionalInfo: String,
        backgroundCustomEmojiId: TdInt64,
        buttonText: String,
        canBeReported: Bool,
        content: MessageContent,
        isRecommended: Bool,
        messageId: Int64,
        sponsor: MessageSponsor,
        title: String
    ) {
        self.accentColorId = accentColorId
        self.additionalInfo = additionalInfo
        self.backgroundCustomEmojiId = backgroundCustomEmojiId
        self.buttonText = buttonText
        self.canBeReported = canBeReported
        self.content = content
        self.isRecommended = isRecommended
        self.messageId = messageId
        self.sponsor = sponsor
        self.title = title
    }
}

