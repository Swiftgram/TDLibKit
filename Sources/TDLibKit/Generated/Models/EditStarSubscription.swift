//
//  EditStarSubscription.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Cancels or re-enables a Telegram Star subscription
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

