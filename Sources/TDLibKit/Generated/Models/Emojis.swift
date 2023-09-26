//
//  Emojis.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.19-9b4266c0
//  https://github.com/tdlib/td/tree/9b4266c0
//

import Foundation


/// Represents a list of emoji
public struct Emojis: Codable, Equatable, Hashable {

    /// List of emojis
    public let emojis: [String]


    public init(emojis: [String]) {
        self.emojis = emojis
    }
}

