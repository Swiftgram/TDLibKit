//
//  ProductInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-18f0716b
//  https://github.com/tdlib/td/tree/18f0716b
//

import Foundation


/// Contains information about a product that can be paid for with an invoice
public struct ProductInfo: Codable, Equatable, Hashable {

    public let description: FormattedText

    /// Product photo; may be null
    public let photo: Photo?

    /// Product title
    public let title: String


    public init(
        description: FormattedText,
        photo: Photo?,
        title: String
    ) {
        self.description = description
        self.photo = photo
        self.title = title
    }
}

