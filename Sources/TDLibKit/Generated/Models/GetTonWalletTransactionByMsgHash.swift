//
//  GetTonWalletTransactionByMsgHash.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-025086e3
//  https://github.com/tdlib/td/tree/025086e3
//

import Foundation


/// Returns a TON wallet transaction by its msg_hash; returns an error if the transaction isn't finalized yet
public struct GetTonWalletTransactionByMsgHash: Codable, Equatable, Hashable {

    /// Value of msg_hash of the transaction
    public let msgHash: String?


    public init(msgHash: String?) {
        self.msgHash = msgHash
    }
}

