//
//  TransferBusinessAccountStars.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
//

import Foundation


/// Transfers Telegram Stars from the business account to the business bot; for bots only
public struct TransferBusinessAccountStars: Codable, Equatable, Hashable {

    /// Unique identifier of the business connection
    public let businessConnectionId: String?

    /// Number of Telegram Stars to transfer
    public let starCount: Int64?


    public init(
        businessConnectionId: String?,
        starCount: Int64?
    ) {
        self.businessConnectionId = businessConnectionId
        self.starCount = starCount
    }
}

