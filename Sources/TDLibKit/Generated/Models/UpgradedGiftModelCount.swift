//
//  UpgradedGiftModelCount.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.52-4269f54e
//  https://github.com/tdlib/td/tree/4269f54e
//

import Foundation


/// Describes a model of an upgraded gift with the number of gifts found
public struct UpgradedGiftModelCount: Codable, Equatable, Hashable {

    /// The model
    public let model: UpgradedGiftModel

    /// Total number of gifts with the model
    public let totalCount: Int


    public init(
        model: UpgradedGiftModel,
        totalCount: Int
    ) {
        self.model = model
        self.totalCount = totalCount
    }
}

