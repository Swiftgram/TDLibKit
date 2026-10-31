//
//  CreateUserTonWallet.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-4c6377aa
//  https://github.com/tdlib/td/tree/4c6377aa
//

import Foundation


/// Creates a TON wallet for the specified regular user; can be used only if getOption("can_use_ton_wallet"). The current user must have positive TON wallet balance
public struct CreateUserTonWallet: Codable, Equatable, Hashable {

    /// Identifier of the user
    public let userId: Int64?


    public init(userId: Int64?) {
        self.userId = userId
    }
}

