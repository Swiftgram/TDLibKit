//
//  TonWalletMessage.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-9b0bfd15
//  https://github.com/tdlib/td/tree/9b0bfd15
//

import Foundation


/// Describes an internal message that must be sent from the TON wallet of the current user. The message must be signed and sent without any changes
public struct TonWalletMessage: Codable, Equatable, Hashable {

    /// Body of the message
    public let body: Data

    /// Address on the TON blockchain to which the message must be sent
    public let destinationAddress: String

    /// The amount that must be attached to the message, in the smallest units of TON Grams; already includes all the required amounts
    public let gramAmount: TdInt64

    /// Initial state of the smart contract that must be deployed with the message; may be null if none
    public let initialState: TonSmartContractInitialState?

    /// Send mode of the message
    public let sendMode: Int


    public init(
        body: Data,
        destinationAddress: String,
        gramAmount: TdInt64,
        initialState: TonSmartContractInitialState?,
        sendMode: Int
    ) {
        self.body = body
        self.destinationAddress = destinationAddress
        self.gramAmount = gramAmount
        self.initialState = initialState
        self.sendMode = sendMode
    }
}

