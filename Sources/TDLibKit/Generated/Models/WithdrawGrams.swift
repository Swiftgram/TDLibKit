//
//  WithdrawGrams.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-61f1d106
//  https://github.com/tdlib/td/tree/61f1d106
//

import Foundation


/// Withdraws all available TON Grams of the current user directly to the TON wallet of the current user, which is created automatically if the user has no wallet yet. The user must have a valid temporary password; see createTemporaryPassword. If the wallet is being created, then the request fails with the error "WALLET_CREATING" and must be repeated later. The withdrawal is completed only after the transaction is confirmed on the TON blockchain
public struct WithdrawGrams: Codable, Equatable, Hashable {


    public init() {}
}

