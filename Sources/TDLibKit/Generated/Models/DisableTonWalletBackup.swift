//
//  DisableTonWalletBackup.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-74e914ee
//  https://github.com/tdlib/td/tree/74e914ee
//

import Foundation


/// Disables backup of the TON wallet of the user. Works only if tonWalletState.is_backup_enabled is true
public struct DisableTonWalletBackup: Codable, Equatable, Hashable {

    /// Password of the current user; pass an empty string unless receive an error with a message "PASSWORD_MISSING" for a passwordless request
    public let password: String?


    public init(password: String?) {
        self.password = password
    }
}

