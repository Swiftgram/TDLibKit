//
//  LabeledPricePart.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Portion of the price of a product (e.g., "delivery cost", "tax amount")
public struct LabeledPricePart: Codable, Equatable, Hashable {

    /// Currency amount in the smallest units of the currency
    public let amount: Int64

    /// Label for this portion of the product price
    public let label: String


    public init(
        amount: Int64,
        label: String
    ) {
        self.amount = amount
        self.label = label
    }
}

