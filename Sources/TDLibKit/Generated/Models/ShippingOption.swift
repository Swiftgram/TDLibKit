//
//  ShippingOption.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.32-35cfcf5d
//  https://github.com/tdlib/td/tree/35cfcf5d
//

import Foundation


/// One shipping option
public struct ShippingOption: Codable, Equatable, Hashable, Identifiable {

    /// Shipping option identifier
    public let id: String

    /// A list of objects used to calculate the total shipping costs
    public let priceParts: [LabeledPricePart]

    /// Option title
    public let title: String


    public init(
        id: String,
        priceParts: [LabeledPricePart],
        title: String
    ) {
        self.id = id
        self.priceParts = priceParts
        self.title = title
    }
}

