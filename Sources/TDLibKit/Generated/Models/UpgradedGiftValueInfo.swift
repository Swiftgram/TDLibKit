//
//  UpgradedGiftValueInfo.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.59-cecbf129
//  https://github.com/tdlib/td/tree/cecbf129
//

import Foundation


/// Contains information about value of an upgraded gift
public struct UpgradedGiftValueInfo: Codable, Equatable, Hashable {

    /// The average sale price in the last month of gifts upgraded from the same gift; in the smallest units of the currency; 0 if there were no such sales
    public let averageSalePrice: Int64

    /// ISO 4217 currency code of the currency in which the prices are represented
    public let currency: String

    /// Number of gifts upgraded from the same gift being resold on Fragment
    public let fragmentListedGiftCount: Int

    /// The HTTPS link to the Fragment for the gift; may be empty if there are no such gifts being sold on Fragment
    public let fragmentUrl: String

    /// Point in time (Unix timestamp) when the corresponding regular gift was originally purchased
    public let initialSaleDate: Int

    /// Initial price of the gift; in the smallest units of the currency
    public let initialSalePrice: Int64

    /// Amount of Telegram Stars that were paid for the gift
    public let initialSaleStarCount: Int64

    /// True, if the last sale was completed on Fragment
    public let isLastSaleOnFragment: Bool

    /// True, if the value is calculated as average value of similar sold gifts. Otherwise, it is based on the sale price of the gift
    public let isValueAverage: Bool

    /// Point in time (Unix timestamp) when the upgraded gift was purchased last time; 0 if never
    public let lastSaleDate: Int

    /// Last purchase price of the gift; in the smallest units of the currency; 0 if the gift has never been resold
    public let lastSalePrice: Int64

    /// The current minimum price of gifts upgraded from the same gift; in the smallest units of the currency; 0 if there are no such gifts
    public let minimumPrice: Int64

    /// Number of gifts upgraded from the same gift being resold on Telegram
    public let telegramListedGiftCount: Int

    /// Estimated value of the gift; in the smallest units of the currency
    public let value: Int64


    public init(
        averageSalePrice: Int64,
        currency: String,
        fragmentListedGiftCount: Int,
        fragmentUrl: String,
        initialSaleDate: Int,
        initialSalePrice: Int64,
        initialSaleStarCount: Int64,
        isLastSaleOnFragment: Bool,
        isValueAverage: Bool,
        lastSaleDate: Int,
        lastSalePrice: Int64,
        minimumPrice: Int64,
        telegramListedGiftCount: Int,
        value: Int64
    ) {
        self.averageSalePrice = averageSalePrice
        self.currency = currency
        self.fragmentListedGiftCount = fragmentListedGiftCount
        self.fragmentUrl = fragmentUrl
        self.initialSaleDate = initialSaleDate
        self.initialSalePrice = initialSalePrice
        self.initialSaleStarCount = initialSaleStarCount
        self.isLastSaleOnFragment = isLastSaleOnFragment
        self.isValueAverage = isValueAverage
        self.lastSaleDate = lastSaleDate
        self.lastSalePrice = lastSalePrice
        self.minimumPrice = minimumPrice
        self.telegramListedGiftCount = telegramListedGiftCount
        self.value = value
    }
}

