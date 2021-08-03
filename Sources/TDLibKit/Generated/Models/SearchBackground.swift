//
//  SearchBackground.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.6-9e7bce1
//  https://github.com/tdlib/td/tree/9e7bce1
//

import Foundation


/// Searches for a background by its name
public struct SearchBackground: Codable {

    /// The name of the background
    public let name: String


    public init(name: String) {
        self.name = name
    }
}

