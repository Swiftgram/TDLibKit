//
//  EditStarSubscription.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.64-7a7081bf
//  https://github.com/tdlib/td/tree/7a7081bf
//

import Foundation


/// Cancels or re-enables Telegram Star subscription
public struct EditStarSubscription: Codable, Equatable, Hashable {

    /// New value of is_canceled
    public let isCanceled: Bool?

    /// Identifier of the subscription to change
    public let subscriptionId: String?


    public init(
        isCanceled: Bool?,
        subscriptionId: String?
    ) {
        self.isCanceled = isCanceled
        self.subscriptionId = subscriptionId
    }
}

