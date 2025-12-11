//
//  StarPaymentOptions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-a9a8353d
//  https://github.com/tdlib/td/tree/a9a8353d
//

import Foundation


/// Contains a list of options for buying Telegram Stars
public struct StarPaymentOptions: Codable, Equatable, Hashable {

    /// The list of options
    public let options: [StarPaymentOption]


    public init(options: [StarPaymentOption]) {
        self.options = options
    }
}

