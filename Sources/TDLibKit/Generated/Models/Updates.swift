//
//  Updates.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.3-3edf14b6
//  https://github.com/tdlib/td/tree/3edf14b6
//

import Foundation


/// Contains a list of updates
public struct Updates: Codable, Equatable {

    /// List of updates
    public let updates: [Update]


    public init(updates: [Update]) {
        self.updates = updates
    }
}

