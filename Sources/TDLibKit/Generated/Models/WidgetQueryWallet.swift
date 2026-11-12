//
//  WidgetQueryWallet.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-23383aef
//  https://github.com/tdlib/td/tree/23383aef
//

import Foundation


/// Describes a TON wallet of the user, who is used in a widget query
public struct WidgetQueryWallet: Codable, Equatable, Hashable {

    /// Address of the wallet
    public let address: String

    /// Balance of the wallet, in the smallest units of the cryptocurrency
    public let gramAmount: TdInt64

    /// Public key of the wallet; may be empty if unknown
    public let publicKey: Data

    /// Serialized StateInit of the wallet contract; must be empty if and only if public_key is empty
    public let stateInit: Data


    public init(
        address: String,
        gramAmount: TdInt64,
        publicKey: Data,
        stateInit: Data
    ) {
        self.address = address
        self.gramAmount = gramAmount
        self.publicKey = publicKey
        self.stateInit = stateInit
    }
}

