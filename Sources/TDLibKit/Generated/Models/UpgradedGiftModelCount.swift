//
//  UpgradedGiftModelCount.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.53-bdec6af5
//  https://github.com/tdlib/td/tree/bdec6af5
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

