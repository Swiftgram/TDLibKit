//
//  ChatAffiliatePrograms.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-53acb2b5
//  https://github.com/tdlib/td/tree/53acb2b5
//

import Foundation


/// Represents a list of affiliate programs that were connected to a chat
public struct ChatAffiliatePrograms: Codable, Equatable, Hashable {

    /// The offset for the next request. If empty, then there are no more results
    public let nextOffset: String

    /// The list of connected affiliate programs
    public let programs: [ChatAffiliateProgram]

    /// The total number of affiliate programs that were connected to the chat
    public let totalCount: Int


    public init(
        nextOffset: String,
        programs: [ChatAffiliateProgram],
        totalCount: Int
    ) {
        self.nextOffset = nextOffset
        self.programs = programs
        self.totalCount = totalCount
    }
}

