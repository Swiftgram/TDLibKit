//
//  SponsoredChat.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-a9a8353d
//  https://github.com/tdlib/td/tree/a9a8353d
//

import Foundation


/// Describes a sponsored chat
public struct SponsoredChat: Codable, Equatable, Hashable {

    /// If non-empty, additional information about the sponsored chat to be shown along with the chat
    public let additionalInfo: String

    /// Chat identifier
    public let chatId: Int64

    /// Additional optional information about the sponsor to be shown along with the chat
    public let sponsorInfo: String

    /// Unique identifier of this result
    public let uniqueId: Int64


    public init(
        additionalInfo: String,
        chatId: Int64,
        sponsorInfo: String,
        uniqueId: Int64
    ) {
        self.additionalInfo = additionalInfo
        self.chatId = chatId
        self.sponsorInfo = sponsorInfo
        self.uniqueId = uniqueId
    }
}

