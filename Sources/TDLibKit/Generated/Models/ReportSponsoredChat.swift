//
//  ReportSponsoredChat.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-fb04b8d4
//  https://github.com/tdlib/td/tree/fb04b8d4
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

