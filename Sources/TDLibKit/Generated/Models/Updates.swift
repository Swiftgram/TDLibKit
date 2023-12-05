//
//  Updates.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.22-85c8c19b
//  https://github.com/tdlib/td/tree/85c8c19b
//

import Foundation


/// Contains a list of updates
public struct Updates: Codable, Equatable, Hashable {

    /// List of updates
    public let updates: [Update]


    public init(updates: [Update]) {
        self.updates = updates
    }
}

