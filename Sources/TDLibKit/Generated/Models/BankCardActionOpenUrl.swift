//
//  BankCardActionOpenUrl.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-a5215c03
//  https://github.com/tdlib/td/tree/a5215c03
//

import Foundation


/// Describes an action associated with a bank card number
public struct BankCardActionOpenUrl: Codable, Equatable, Hashable {

    /// Action text
    public let text: String

    /// The URL to be opened
    public let url: String


    public init(
        text: String,
        url: String
    ) {
        self.text = text
        self.url = url
    }
}

