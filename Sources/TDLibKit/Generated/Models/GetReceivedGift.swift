//
//  GetReceivedGift.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-afbfb4d8
//  https://github.com/tdlib/td/tree/afbfb4d8
//

import Foundation


/// Returns information about a received gift
public struct GetReceivedGift: Codable, Equatable, Hashable {

    /// Identifier of the gift
    public let receivedGiftId: String?


    public init(receivedGiftId: String?) {
        self.receivedGiftId = receivedGiftId
    }
}

