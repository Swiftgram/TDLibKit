//
//  ProcessGiftPurchaseOffer.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.59-cecbf129
//  https://github.com/tdlib/td/tree/cecbf129
//

import Foundation


/// Handles a pending gift purchase offer
public struct ProcessGiftPurchaseOffer: Codable, Equatable, Hashable {

    /// Pass true to approve the request; pass false to decline it
    public let approve: Bool?

    /// Identifier of the message with the gift purchase offer
    public let messageId: Int64?


    public init(
        approve: Bool?,
        messageId: Int64?
    ) {
        self.approve = approve
        self.messageId = messageId
    }
}

