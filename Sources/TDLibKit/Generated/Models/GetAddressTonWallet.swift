//
//  GetAddressTonWallet.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-ea3f69ce
//  https://github.com/tdlib/td/tree/ea3f69ce
//

import Foundation


/// Returns information about a TON wallet with the given address; can be used only if getOption("can_use_ton_wallet")
public struct GetAddressTonWallet: Codable, Equatable, Hashable {

    /// Address in the TON blockchain
    public let address: String?


    public init(address: String?) {
        self.address = address
    }
}

