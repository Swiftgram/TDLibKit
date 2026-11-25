//
//  UpgradedGiftCollectionNames.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
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

