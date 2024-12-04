//
//  ProductInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-eb98bbe6
//  https://github.com/tdlib/td/tree/eb98bbe6
//

import Foundation


/// Contains information about a product that can be paid with invoice
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

