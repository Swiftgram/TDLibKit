//
//  GetTonWalletTransactionByMsgHash.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-4a85043f
//  https://github.com/tdlib/td/tree/4a85043f
//

import Foundation


/// Returns a TON wallet transaction by their msg_hash; return an error if the transaction isn't finalized yet
public struct GetTonWalletTransactionByMsgHash: Codable, Equatable, Hashable {

    /// Value of msg_hash of the transaction
    public let msgHash: String?


    public init(msgHash: String?) {
        self.msgHash = msgHash
    }
}

