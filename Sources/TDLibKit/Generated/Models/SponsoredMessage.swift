//
//  SponsoredMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.28-2424d681
//  https://github.com/tdlib/td/tree/2424d681
//

import Foundation


/// Describes a sponsored message
public struct SponsoredMessage: Codable, Equatable, Hashable {

    /// If non-empty, additional information about the sponsored message to be shown along with the message
    public let additionalInfo: String

    /// If non-empty, text for the message action button
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


    public init(
        additionalInfo: String,
        buttonText: String,
        canBeReported: Bool,
        content: MessageContent,
        isRecommended: Bool,
        messageId: Int64,
        sponsor: MessageSponsor
    ) {
        self.additionalInfo = additionalInfo
        self.buttonText = buttonText
        self.canBeReported = canBeReported
        self.content = content
        self.isRecommended = isRecommended
        self.messageId = messageId
        self.sponsor = sponsor
    }
}

