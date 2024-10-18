//
//  ReuseStarSubscription.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.37-c1fea0f2
//  https://github.com/tdlib/td/tree/c1fea0f2
//

import Foundation


/// Reuses an active subscription and joins the subscribed chat again
public struct ReuseStarSubscription: Codable, Equatable, Hashable {

    /// Identifier of the subscription
    public let subscriptionId: String?


    public init(subscriptionId: String?) {
        self.subscriptionId = subscriptionId
    }
}

