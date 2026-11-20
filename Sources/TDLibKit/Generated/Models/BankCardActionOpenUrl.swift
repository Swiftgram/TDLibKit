//
//  BankCardActionOpenUrl.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-03220f6b
//  https://github.com/tdlib/td/tree/03220f6b
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

