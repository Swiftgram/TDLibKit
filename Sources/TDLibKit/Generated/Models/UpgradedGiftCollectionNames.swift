//
//  UpgradedGiftCollectionNames.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-18c8f7a0
//  https://github.com/tdlib/td/tree/18c8f7a0
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

