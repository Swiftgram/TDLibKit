//
//  Updates.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.33-97ded010
//  https://github.com/tdlib/td/tree/97ded010
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

