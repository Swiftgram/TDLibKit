//
//  ReuseStarSubscription.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-022d6020
//  https://github.com/tdlib/td/tree/022d6020
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

