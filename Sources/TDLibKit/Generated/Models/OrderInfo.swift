//
//  OrderInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.13-c95598e5
//  https://github.com/tdlib/td/tree/c95598e5
//

import Foundation


/// Order information
public struct OrderInfo: Codable, Equatable {

    /// Email address of the user
    public let emailAddress: String

    /// Name of the user
    public let name: String

    /// Phone number of the user
    public let phoneNumber: String

    /// Shipping address for this order; may be null
    public let shippingAddress: Address?


    public init(
        emailAddress: String,
        name: String,
        phoneNumber: String,
        shippingAddress: Address?
    ) {
        self.emailAddress = emailAddress
        self.name = name
        self.phoneNumber = phoneNumber
        self.shippingAddress = shippingAddress
    }
}

