//
//  GetGiftUpgradePreview.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.63-a82128ab
//  https://github.com/tdlib/td/tree/a82128ab
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

