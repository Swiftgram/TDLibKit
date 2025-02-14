//
//  ReuseStarSubscription.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.45-721300bc
//  https://github.com/tdlib/td/tree/721300bc
//

import Foundation


/// Reuses an active Telegram Star subscription to a channel chat and joins the chat again
public struct ReuseStarSubscription: Codable, Equatable, Hashable {

    /// Identifier of the subscription
    public let subscriptionId: String?


    public init(subscriptionId: String?) {
        self.subscriptionId = subscriptionId
    }
}

