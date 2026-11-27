//
//  DeleteTonWallet.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-9b0bfd15
//  https://github.com/tdlib/td/tree/9b0bfd15
//

import Foundation


/// Deletes the current TON wallet of the user and creates a new one; can be used only if getOption("can_use_ton_wallet")
public struct DeleteTonWallet: Codable, Equatable, Hashable {

    /// Password of the current user; pass an empty string unless an error with a message "PASSWORD_MISSING" was received for a passwordless request
    public let password: String?


    public init(password: String?) {
        self.password = password
    }
}

