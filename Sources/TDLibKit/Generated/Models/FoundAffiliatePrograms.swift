//
//  FoundAffiliatePrograms.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-ea3f69ce
//  https://github.com/tdlib/td/tree/ea3f69ce
//

import Foundation


/// Represents a list of found affiliate programs
public struct FoundAffiliatePrograms: Codable, Equatable, Hashable {

    /// The offset for the next request. If empty, then there are no more results
    public let nextOffset: String

    /// The list of affiliate programs
    public let programs: [FoundAffiliateProgram]

    /// The total number of found affiliate programs
    public let totalCount: Int


    public init(
        nextOffset: String,
        programs: [FoundAffiliateProgram],
        totalCount: Int
    ) {
        self.nextOffset = nextOffset
        self.programs = programs
        self.totalCount = totalCount
    }
}

