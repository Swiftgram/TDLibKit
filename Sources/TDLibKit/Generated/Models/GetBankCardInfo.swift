//
//  GetBankCardInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.9-c2c49ebc
//  https://github.com/tdlib/td/tree/c2c49ebc
//

import Foundation


/// Returns information about a bank card
public struct GetBankCardInfo: Codable {

    /// The bank card number
    public let bankCardNumber: String?


    public init(bankCardNumber: String?) {
        self.bankCardNumber = bankCardNumber
    }
}

