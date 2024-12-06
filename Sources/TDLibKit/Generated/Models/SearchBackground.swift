//
//  SearchBackground.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-c85b20a4
//  https://github.com/tdlib/td/tree/c85b20a4
//

import Foundation


/// Searches for a background by its name
public struct SearchBackground: Codable, Equatable, Hashable {

    /// The name of the background
    public let name: String?


    public init(name: String?) {
        self.name = name
    }
}

