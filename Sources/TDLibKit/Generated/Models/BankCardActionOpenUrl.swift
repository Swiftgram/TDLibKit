//
//  BankCardActionOpenUrl.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.10-5a764139
//  https://github.com/tdlib/td/tree/5a764139
//

import Foundation


/// Describes an action associated with a bank card number
public struct BankCardActionOpenUrl: Codable, Equatable {

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

