//
//  BankCardActionOpenUrl.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.5-73d8fb4
//  https://github.com/tdlib/td/tree/73d8fb4
//

import Foundation


/// Describes an action associated with a bank card number
public struct BankCardActionOpenUrl: Codable {

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

