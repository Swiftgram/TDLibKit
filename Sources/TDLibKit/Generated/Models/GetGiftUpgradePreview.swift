//
//  GetGiftUpgradePreview.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-e7e457ca
//  https://github.com/tdlib/td/tree/e7e457ca
//

import Foundation


/// Returns examples of possible upgraded gifts for a regular gift
public struct GetGiftUpgradePreview: Codable, Equatable, Hashable {

    /// Identifier of the regular gift
    public let regularGiftId: TdInt64?


    public init(regularGiftId: TdInt64?) {
        self.regularGiftId = regularGiftId
    }
}

