//
//  GiftResaleParameters.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-a9a8353d
//  https://github.com/tdlib/td/tree/a9a8353d
//

import Foundation


/// Describes parameters of a unique gift available for resale
public struct GiftResaleParameters: Codable, Equatable, Hashable {

    /// Resale price of the gift in Telegram Stars
    public let starCount: Int64

    /// Resale price of the gift in 1/100 of Toncoin
    public let toncoinCentCount: Int64

    /// True, if the gift can be bought only using Toncoins
    public let toncoinOnly: Bool


    public init(
        starCount: Int64,
        toncoinCentCount: Int64,
        toncoinOnly: Bool
    ) {
        self.starCount = starCount
        self.toncoinCentCount = toncoinCentCount
        self.toncoinOnly = toncoinOnly
    }
}

