//
//  UpgradedGiftOriginalDetails.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.42-2be9e799
//  https://github.com/tdlib/td/tree/2be9e799
//

import Foundation


/// Describes the original details about the gift
public struct UpgradedGiftOriginalDetails: Codable, Equatable, Hashable {

    /// Point in time (Unix timestamp) when the gift was sent
    public let date: Int

    /// Identifier of the user that received the gift
    public let receiverUserId: Int64

    /// Identifier of the user that sent the gift; 0 if the gift was private
    public let senderUserId: Int64

    /// Message added to the gift
    public let text: FormattedText


    public init(
        date: Int,
        receiverUserId: Int64,
        senderUserId: Int64,
        text: FormattedText
    ) {
        self.date = date
        self.receiverUserId = receiverUserId
        self.senderUserId = senderUserId
        self.text = text
    }
}

