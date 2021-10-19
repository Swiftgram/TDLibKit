//
//  SearchBackground.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-3abac232
//  https://github.com/tdlib/td/tree/3abac232
//

import Foundation


/// Searches for a background by its name
public struct SearchBackground: Codable {

    /// The name of the background
    public let name: String?


    public init(name: String?) {
        self.name = name
    }
}

