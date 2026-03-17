//
//  GetGiftUpgradePreview.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.62-0ae923c4
//  https://github.com/tdlib/td/tree/0ae923c4
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

