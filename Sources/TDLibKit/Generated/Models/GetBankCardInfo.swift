//
//  GetBankCardInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
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

