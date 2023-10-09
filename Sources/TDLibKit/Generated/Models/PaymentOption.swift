//
//  PaymentOption.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.19-986f1ab4
//  https://github.com/tdlib/td/tree/986f1ab4
//

import Foundation


/// Describes an additional payment option
public struct PaymentOption: Codable, Equatable, Hashable {

    /// Title for the payment option
    public let title: String

    /// Payment form URL to be opened in a web view
    public let url: String


    public init(
        title: String,
        url: String
    ) {
        self.title = title
        self.url = url
    }
}

