//
//  BankCardInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-c85b20a4
//  https://github.com/tdlib/td/tree/c85b20a4
//

import Foundation


/// Information about a bank card
public struct BankCardInfo: Codable, Equatable, Hashable {

    /// Actions that can be done with the bank card number
    public let actions: [BankCardActionOpenUrl]

    /// Title of the bank card description
    public let title: String


    public init(
        actions: [BankCardActionOpenUrl],
        title: String
    ) {
        self.actions = actions
        self.title = title
    }
}

