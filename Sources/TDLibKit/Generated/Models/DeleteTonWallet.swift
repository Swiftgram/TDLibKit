//
//  DeleteTonWallet.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-0e88653d
//  https://github.com/tdlib/td/tree/0e88653d
//

import Foundation


/// Deletes the current TON wallet of the user and creates a new one; can be used only if getOption("can_use_ton_wallet")
public struct DeleteTonWallet: Codable, Equatable, Hashable {

    /// Password of the current user; pass an empty string unless receive an error with a message "PASSWORD_MISSING" for a passwordless request
    public let password: String?


    public init(password: String?) {
        self.password = password
    }
}

