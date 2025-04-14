//
//  ConnectedAffiliatePrograms.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.47-04adfc87
//  https://github.com/tdlib/td/tree/04adfc87
//

import Foundation


/// Represents a list of affiliate programs that were connected to an affiliate
public struct ConnectedAffiliatePrograms: Codable, Equatable, Hashable {

    /// The offset for the next request. If empty, then there are no more results
    public let nextOffset: String

    /// The list of connected affiliate programs
    public let programs: [ConnectedAffiliateProgram]

    /// The total number of affiliate programs that were connected to the affiliate
    public let totalCount: Int


    public init(
        nextOffset: String,
        programs: [ConnectedAffiliateProgram],
        totalCount: Int
    ) {
        self.nextOffset = nextOffset
        self.programs = programs
        self.totalCount = totalCount
    }
}

