//
//  OnRampPaymentMethod.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
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

