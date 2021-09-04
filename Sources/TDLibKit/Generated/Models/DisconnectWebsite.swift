//
//  DisconnectWebsite.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.7-7135caa
//  https://github.com/tdlib/td/tree/7135caa
//

import Foundation


/// Disconnects website from the current user's Telegram account
public struct DisconnectWebsite: Codable {

    /// Website identifier
    public let websiteId: TdInt64


    public init(websiteId: TdInt64) {
        self.websiteId = websiteId
    }
}
