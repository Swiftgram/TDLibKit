//
//  DisconnectWebsite.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.45-521aed8e
//  https://github.com/tdlib/td/tree/521aed8e
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

