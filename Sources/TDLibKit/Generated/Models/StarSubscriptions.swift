//
//  StarSubscriptions.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.35-8d08b34e
//  https://github.com/tdlib/td/tree/8d08b34e
//

import Foundation


/// Represents a list of Telegram Star subscriptions
public struct StarSubscriptions: Codable, Equatable, Hashable {

    /// The offset for the next request. If empty, then there are no more results
    public let nextOffset: String

    /// The number of Telegram Stars required to buy to extend subscriptions expiring soon
    public let requiredStarCount: Int64

    /// The amount of owned Telegram Stars
    public let starCount: Int64

    /// List of subbscriptions for Telegram Stars
    public let subscriptions: [StarSubscription]


    public init(
        nextOffset: String,
        requiredStarCount: Int64,
        starCount: Int64,
        subscriptions: [StarSubscription]
    ) {
        self.nextOffset = nextOffset
        self.requiredStarCount = requiredStarCount
        self.starCount = starCount
        self.subscriptions = subscriptions
    }
}

