//
//  UpgradedGiftModelCount.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-1b08c83b
//  https://github.com/tdlib/td/tree/1b08c83b
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

