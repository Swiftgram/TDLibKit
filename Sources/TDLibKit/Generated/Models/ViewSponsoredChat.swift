//
//  ViewSponsoredChat.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.47-f1b75003
//  https://github.com/tdlib/td/tree/f1b75003
//

import Foundation


/// Informs TDLib that the user fully viewed a sponsored chat
public struct ViewSponsoredChat: Codable, Equatable, Hashable {

    /// Unique identifier of the sponsored chat
    public let sponsoredChatUniqueId: Int64?


    public init(sponsoredChatUniqueId: Int64?) {
        self.sponsoredChatUniqueId = sponsoredChatUniqueId
    }
}

