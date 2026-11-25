//
//  WalletBotBalance.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Describes balance of the current user in the bot https://t.me/walt
public struct WalletBotBalance: Codable, Equatable, Hashable {

    /// True, if the user has a positive TON Gram balance
    public let hasBalance: Bool

    /// The URL to open to launch the bot; may be empty if none
    public let url: String


    public init(
        hasBalance: Bool,
        url: String
    ) {
        self.hasBalance = hasBalance
        self.url = url
    }
}

