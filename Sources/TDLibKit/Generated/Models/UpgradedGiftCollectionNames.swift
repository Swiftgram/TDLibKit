//
//  UpgradedGiftCollectionNames.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-03220f6b
//  https://github.com/tdlib/td/tree/03220f6b
//

import Foundation


/// Contains a list of names of upgraded gift collections. The name of the collection of an upgraded gift is the part of upgradedGift.name before the last "-"
public struct UpgradedGiftCollectionNames: Codable, Equatable, Hashable {

    /// The names
    public let names: [String]


    public init(names: [String]) {
        self.names = names
    }
}

