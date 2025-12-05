//
//  GiftCollections.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.58-889bdf06
//  https://github.com/tdlib/td/tree/889bdf06
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

