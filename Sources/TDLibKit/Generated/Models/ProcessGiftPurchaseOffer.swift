//
//  ProcessGiftPurchaseOffer.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.63-8ff05a0e
//  https://github.com/tdlib/td/tree/8ff05a0e
//

import Foundation


/// Handles a pending gift purchase offer
public struct ProcessGiftPurchaseOffer: Codable, Equatable, Hashable {

    /// Pass true to accept the request; pass false to reject it
    public let accept: Bool?

    /// Identifier of the message with the gift purchase offer
    public let messageId: Int64?


    public init(
        accept: Bool?,
        messageId: Int64?
    ) {
        self.accept = accept
        self.messageId = messageId
    }
}

