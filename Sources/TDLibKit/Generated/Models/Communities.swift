//
//  Communities.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-1f390d90
//  https://github.com/tdlib/td/tree/1f390d90
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

