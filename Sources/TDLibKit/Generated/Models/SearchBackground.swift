//
//  SearchBackground.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.11-1543c41f
//  https://github.com/tdlib/td/tree/1543c41f
//

import Foundation


/// Searches for a background by its name
public struct SearchBackground: Codable, Equatable {

    /// The name of the background
    public let name: String?


    public init(name: String?) {
        self.name = name
    }
}

