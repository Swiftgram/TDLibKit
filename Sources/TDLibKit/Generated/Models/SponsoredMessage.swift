//
//  SponsoredMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.17-00258ccb
//  https://github.com/tdlib/td/tree/00258ccb
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

    /// Message identifier; unique for the chat to which the sponsored message belongs among both ordinary and sponsored messages
    public let messageId: Int64

    /// Information about the sponsor of the message
    public let sponsor: MessageSponsor


    public init(
        additionalInfo: String,
        content: MessageContent,
        isRecommended: Bool,
        messageId: Int64,
        sponsor: MessageSponsor
    ) {
        self.additionalInfo = additionalInfo
        self.content = content
        self.isRecommended = isRecommended
        self.messageId = messageId
        self.sponsor = sponsor
    }
}

