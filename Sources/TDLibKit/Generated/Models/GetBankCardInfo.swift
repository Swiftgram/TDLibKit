//
//  GetBankCardInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-eb98bbe6
//  https://github.com/tdlib/td/tree/eb98bbe6
//

import Foundation


/// Returns information about a bank card
public struct GetBankCardInfo: Codable, Equatable, Hashable {

    /// The bank card number
    public let bankCardNumber: String?


    public init(bankCardNumber: String?) {
        self.bankCardNumber = bankCardNumber
    }
}

