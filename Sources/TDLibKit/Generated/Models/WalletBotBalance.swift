//
//  WalletBotBalance.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-23383aef
//  https://github.com/tdlib/td/tree/23383aef
//

import Foundation


/// Describes balance of the current user in the bot https://t.me/walt
public struct WalletBotBalance: Codable, Equatable, Hashable {

    /// True, if the user has positive TON Gram balance
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

