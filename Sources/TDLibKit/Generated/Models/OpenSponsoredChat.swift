//
//  OpenSponsoredChat.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.47-04adfc87
//  https://github.com/tdlib/td/tree/04adfc87
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

