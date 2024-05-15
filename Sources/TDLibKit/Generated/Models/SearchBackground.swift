//
//  SearchBackground.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-783033c4
//  https://github.com/tdlib/td/tree/783033c4
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

