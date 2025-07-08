//
//  StarSubscriptions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6c8bfbb5
//  https://github.com/tdlib/td/tree/6c8bfbb5
//

import Foundation


/// Represents a list of Telegram Star subscriptions
public struct StarSubscriptions: Codable, Equatable, Hashable {

    /// The offset for the next request. If empty, then there are no more results
    public let nextOffset: String

    /// The number of Telegram Stars required to buy to extend subscriptions expiring soon
    public let requiredStarCount: Int64

    /// The amount of owned Telegram Stars
    public let starAmount: StarAmount

    /// List of subscriptions for Telegram Stars
    public let subscriptions: [StarSubscription]


    public init(
        nextOffset: String,
        requiredStarCount: Int64,
        starAmount: StarAmount,
        subscriptions: [StarSubscription]
    ) {
        self.nextOffset = nextOffset
        self.requiredStarCount = requiredStarCount
        self.starAmount = starAmount
        self.subscriptions = subscriptions
    }
}

