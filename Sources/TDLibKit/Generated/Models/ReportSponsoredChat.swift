//
//  ReportSponsoredChat.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.49-e894536b
//  https://github.com/tdlib/td/tree/e894536b
//

import Foundation


/// Reports a sponsored chat to Telegram moderators
public struct ReportSponsoredChat: Codable, Equatable, Hashable {

    /// Option identifier chosen by the user; leave empty for the initial request
    public let optionId: Data?

    /// Unique identifier of the sponsored chat
    public let sponsoredChatUniqueId: Int64?


    public init(
        optionId: Data?,
        sponsoredChatUniqueId: Int64?
    ) {
        self.optionId = optionId
        self.sponsoredChatUniqueId = sponsoredChatUniqueId
    }
}

