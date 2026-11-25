//
//  TonWalletState.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Describes state of the wallet of the current user on the TON blockchain
public struct TonWalletState: Codable, Equatable, Hashable {

    /// Address of the wallet; may be empty if none
    public let address: String

    /// True, if the user can enable backup for the wallet key
    public let canEnableBackup: Bool

    /// True, if the wallet key can be exported using getTonWalletSecretPhrase
    public let canExportPhrase: Bool

    /// The total owned amount, in the smallest units of TON Grams
    public let gramAmount: TdInt64

    /// True, if backup for the wallet key is enabled
    public let isBackupEnabled: Bool

    /// True, if the wallet is being created
    public let isBeingCreated: Bool

    /// Public key of the wallet; may be empty if none
    public let publicKey: Data


    public init(
        address: String,
        canEnableBackup: Bool,
        canExportPhrase: Bool,
        gramAmount: TdInt64,
        isBackupEnabled: Bool,
        isBeingCreated: Bool,
        publicKey: Data
    ) {
        self.address = address
        self.canEnableBackup = canEnableBackup
        self.canExportPhrase = canExportPhrase
        self.gramAmount = gramAmount
        self.isBackupEnabled = isBackupEnabled
        self.isBeingCreated = isBeingCreated
        self.publicKey = publicKey
    }
}

