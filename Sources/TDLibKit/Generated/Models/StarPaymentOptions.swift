//
//  StarPaymentOptions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.31-63c7d030
//  https://github.com/tdlib/td/tree/63c7d030
//

import Foundation


/// Contains a list of options for buying Telegram stars
public struct StarPaymentOptions: Codable, Equatable, Hashable {

    /// The list of options
    public let options: [StarPaymentOption]


    public init(options: [StarPaymentOption]) {
        self.options = options
    }
}

