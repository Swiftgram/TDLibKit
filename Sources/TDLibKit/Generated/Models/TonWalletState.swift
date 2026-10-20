//
//  TonWalletState.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-4a85043f
//  https://github.com/tdlib/td/tree/4a85043f
//

import Foundation


/// Describes state of the wallet of the current user in the TON blockchain
public struct TonWalletState: Codable, Equatable, Hashable {

    /// Address of the wallet; may be empty if none
    public let address: String

    /// True, if the user can enable backup for the wallet key
    public let canEnableBackup: Bool

    /// True, if the wallet key can be exported using getTonWalletSecretPhrase
    public let canExportPhrase: Bool

    /// The total amount of owned TON Grams, in the smallest units of the cryptocurrency
    public let gramAmount: Int64

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
        gramAmount: Int64,
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

