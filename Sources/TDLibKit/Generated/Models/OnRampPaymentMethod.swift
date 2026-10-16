//
//  OnRampPaymentMethod.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-f381f4b3
//  https://github.com/tdlib/td/tree/f381f4b3
//

import Foundation


/// Describes a payment method of an on-ramp provider
public struct OnRampPaymentMethod: Codable, Equatable, Hashable {

    /// True, if the method is available to the user
    public let isAvailable: Bool

    /// Name of the method
    public let name: String


    public init(
        isAvailable: Bool,
        name: String
    ) {
        self.isAvailable = isAvailable
        self.name = name
    }
}

