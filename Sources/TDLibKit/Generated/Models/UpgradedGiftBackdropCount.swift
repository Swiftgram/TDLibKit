//
//  UpgradedGiftBackdropCount.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-ea3f69ce
//  https://github.com/tdlib/td/tree/ea3f69ce
//

import Foundation


/// Describes a backdrop of an upgraded gift
public struct UpgradedGiftBackdropCount: Codable, Equatable, Hashable {

    /// The backdrop
    public let backdrop: UpgradedGiftBackdrop

    /// Total number of gifts with the backdrop
    public let totalCount: Int


    public init(
        backdrop: UpgradedGiftBackdrop,
        totalCount: Int
    ) {
        self.backdrop = backdrop
        self.totalCount = totalCount
    }
}

