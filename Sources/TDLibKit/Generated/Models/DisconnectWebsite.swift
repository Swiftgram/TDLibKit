//
//  DisconnectWebsite.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.34-81dc2e24
//  https://github.com/tdlib/td/tree/81dc2e24
//

import Foundation


/// Disconnects website from the current user's Telegram account
public struct DisconnectWebsite: Codable, Equatable, Hashable {

    /// Website identifier
    public let websiteId: TdInt64?


    public init(websiteId: TdInt64?) {
        self.websiteId = websiteId
    }
}

