//
//  Communities.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-9b0bfd15
//  https://github.com/tdlib/td/tree/9b0bfd15
//

import Foundation


/// Represents a list of communities
public struct Communities: Codable, Equatable, Hashable {

    /// List of community identifiers
    public let communityIds: [Int64]


    public init(communityIds: [Int64]) {
        self.communityIds = communityIds
    }
}

