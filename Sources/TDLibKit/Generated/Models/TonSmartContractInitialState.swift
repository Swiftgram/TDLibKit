//
//  TonSmartContractInitialState.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Describes initial state of a smart contract on the TON blockchain
public struct TonSmartContractInitialState: Codable, Equatable, Hashable {

    /// Code of the smart contract
    public let code: Data

    /// Initial data of the smart contract
    public let data: Data


    public init(
        code: Data,
        data: Data
    ) {
        self.code = code
        self.data = data
    }
}

