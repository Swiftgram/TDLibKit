//
//  EditStarSubscription.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.42-2be9e799
//  https://github.com/tdlib/td/tree/2be9e799
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

