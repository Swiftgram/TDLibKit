//
//  GroupCallVideoSourceGroup.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.13-c95598e5
//  https://github.com/tdlib/td/tree/c95598e5
//

import Foundation


/// Describes a group of video synchronization source identifiers
public struct GroupCallVideoSourceGroup: Codable, Equatable {

    /// The semantics of sources, one of "SIM" or "FID"
    public let semantics: String

    /// The list of synchronization source identifiers
    public let sourceIds: [Int]


    public init(
        semantics: String,
        sourceIds: [Int]
    ) {
        self.semantics = semantics
        self.sourceIds = sourceIds
    }
}

