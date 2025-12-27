//
//  DropGiftOriginalDetails.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.59-cecbf129
//  https://github.com/tdlib/td/tree/cecbf129
//

import Foundation


/// Drops original details for an upgraded gift
public struct DropGiftOriginalDetails: Codable, Equatable, Hashable {

    /// Identifier of the gift
    public let receivedGiftId: String?

    /// The amount of Telegram Stars required to pay for the operation
    public let starCount: Int64?


    public init(
        receivedGiftId: String?,
        starCount: Int64?
    ) {
        self.receivedGiftId = receivedGiftId
        self.starCount = starCount
    }
}

