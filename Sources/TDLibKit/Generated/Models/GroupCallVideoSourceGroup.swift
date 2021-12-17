//
//  GroupCallVideoSourceGroup.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.10-eec1953c
//  https://github.com/tdlib/td/tree/eec1953c
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

