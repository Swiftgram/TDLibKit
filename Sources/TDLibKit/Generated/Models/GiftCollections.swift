//
//  GiftCollections.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.63-1677a0c7
//  https://github.com/tdlib/td/tree/1677a0c7
//

import Foundation


/// Contains a list of gift collections
public struct GiftCollections: Codable, Equatable, Hashable {

    /// List of gift collections
    public let collections: [GiftCollection]


    public init(collections: [GiftCollection]) {
        self.collections = collections
    }
}

