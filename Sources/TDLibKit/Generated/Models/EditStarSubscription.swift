//
//  EditStarSubscription.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.38-d321984b
//  https://github.com/tdlib/td/tree/d321984b
//

import Foundation


/// Cancels or reenables Telegram Star subscription to a channel
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

