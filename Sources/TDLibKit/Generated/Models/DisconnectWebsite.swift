//
//  DisconnectWebsite.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-b393215d
//  https://github.com/tdlib/td/tree/b393215d
//

import Foundation


/// Disconnects website from the current user's Telegram account
public struct DisconnectWebsite: Codable, Equatable {

    /// Website identifier
    public let websiteId: TdInt64?


    public init(websiteId: TdInt64?) {
        self.websiteId = websiteId
    }
}

