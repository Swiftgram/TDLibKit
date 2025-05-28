//
//  UpgradedGiftBackdropCount.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.49-e894536b
//  https://github.com/tdlib/td/tree/e894536b
//

import Foundation


/// Describes a backdrop of an upgraded gift
public struct UpgradedGiftBackdropCount: Codable, Equatable, Hashable {

    /// The backdrop
    public let backdrop: UpgradedGiftBackdrop

    /// Total number of gifts with the symbol
    public let totalCount: Int


    public init(
        backdrop: UpgradedGiftBackdrop,
        totalCount: Int
    ) {
        self.backdrop = backdrop
        self.totalCount = totalCount
    }
}

