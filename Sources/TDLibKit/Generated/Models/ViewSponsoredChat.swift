//
//  ViewSponsoredChat.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-a9a8353d
//  https://github.com/tdlib/td/tree/a9a8353d
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

