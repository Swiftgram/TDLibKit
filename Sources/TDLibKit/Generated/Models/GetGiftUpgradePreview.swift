//
//  GetGiftUpgradePreview.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Returns examples of possible upgraded gifts for a regular gift
public struct GetGiftUpgradePreview: Codable, Equatable, Hashable {

    /// Identifier of the gift
    public let giftId: TdInt64?


    public init(giftId: TdInt64?) {
        self.giftId = giftId
    }
}

