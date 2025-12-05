//
//  GiftPurchaseLimits.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-889bdf06
//  https://github.com/tdlib/td/tree/889bdf06
//

import Foundation


/// Describes the maximum number of times that a specific gift can be purchased
public struct GiftPurchaseLimits: Codable, Equatable, Hashable {

    /// Number of remaining times the gift can be purchased
    public let remainingCount: Int

    /// The maximum number of times the gifts can be purchased
    public let totalCount: Int


    public init(
        remainingCount: Int,
        totalCount: Int
    ) {
        self.remainingCount = remainingCount
        self.totalCount = totalCount
    }
}

