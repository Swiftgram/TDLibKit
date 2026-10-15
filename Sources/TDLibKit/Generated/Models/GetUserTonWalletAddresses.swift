//
//  GetUserTonWalletAddresses.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-5f9312dc
//  https://github.com/tdlib/td/tree/5f9312dc
//

import Foundation


/// Returns TON wallet addresses of the specified users; can be used only if getOption("can_use_ton_wallet")
public struct GetUserTonWalletAddresses: Codable, Equatable, Hashable {

    /// Identifiers of the users whose wallet addresses have to be returned. If a user has no TON wallet, it will be skipped in the result
    public let userIds: [Int64]?


    public init(userIds: [Int64]?) {
        self.userIds = userIds
    }
}

