//
//  UpgradedGiftCollectionNames.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-7601cdfb
//  https://github.com/tdlib/td/tree/7601cdfb
//

import Foundation


/// Contains a list of names of upgraded gift collections
public struct UpgradedGiftCollectionNames: Codable, Equatable, Hashable {

    /// The names
    public let names: [String]


    public init(names: [String]) {
        self.names = names
    }
}

