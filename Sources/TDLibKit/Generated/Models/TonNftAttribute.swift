//
//  TonNftAttribute.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.70-23383aef
//  https://github.com/tdlib/td/tree/23383aef
//

import Foundation


/// Represents an attribute of an NFT in the TON blockchain
public struct TonNftAttribute: Codable, Equatable, Hashable {

    /// Trait type
    public let traitType: String

    /// Value of the attribute
    public let value: String


    public init(
        traitType: String,
        value: String
    ) {
        self.traitType = traitType
        self.value = value
    }
}

