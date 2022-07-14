//
//  Updates.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-b8bd39dc
//  https://github.com/tdlib/td/tree/b8bd39dc
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

