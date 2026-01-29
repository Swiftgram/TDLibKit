//
//  UpgradedGiftBackdropCount.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.60-cb863c16
//  https://github.com/tdlib/td/tree/cb863c16
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

