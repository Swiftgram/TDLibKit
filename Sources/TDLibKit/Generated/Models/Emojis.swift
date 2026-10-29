//
//  Emojis.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-5a18feeb
//  https://github.com/tdlib/td/tree/5a18feeb
//

import Foundation


/// Represents a list of emojis
public struct Emojis: Codable, Equatable, Hashable {

    /// List of emojis
    public let emojis: [String]


    public init(emojis: [String]) {
        self.emojis = emojis
    }
}

