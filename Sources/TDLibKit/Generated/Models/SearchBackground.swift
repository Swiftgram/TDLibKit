//
//  SearchBackground.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.9-a7952f38
//  https://github.com/tdlib/td/tree/a7952f38
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

