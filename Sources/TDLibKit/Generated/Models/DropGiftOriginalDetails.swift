//
//  DropGiftOriginalDetails.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-18f0716b
//  https://github.com/tdlib/td/tree/18f0716b
//

import Foundation


/// Drops the original details for an upgraded gift
public struct DropGiftOriginalDetails: Codable, Equatable, Hashable {

    /// Identifier of the gift
    public let receivedGiftId: String?

    /// The Telegram Star amount that must be paid for the operation
    public let starCount: Int64?


    public init(
        receivedGiftId: String?,
        starCount: Int64?
    ) {
        self.receivedGiftId = receivedGiftId
        self.starCount = starCount
    }
}

