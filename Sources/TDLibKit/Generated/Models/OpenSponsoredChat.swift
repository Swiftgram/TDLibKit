//
//  OpenSponsoredChat.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-e7e457ca
//  https://github.com/tdlib/td/tree/e7e457ca
//

import Foundation


/// Informs TDLib that the user opened a sponsored chat
public struct OpenSponsoredChat: Codable, Equatable, Hashable {

    /// Unique identifier of the sponsored chat
    public let sponsoredChatUniqueId: Int64?


    public init(sponsoredChatUniqueId: Int64?) {
        self.sponsoredChatUniqueId = sponsoredChatUniqueId
    }
}

