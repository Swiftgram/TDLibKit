//
//  FoundAffiliateProgram.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-c85b20a4
//  https://github.com/tdlib/td/tree/c85b20a4
//

import Foundation


/// Describes a found affiliate program
public struct FoundAffiliateProgram: Codable, Equatable, Hashable {

    /// User identifier of the bot created the program
    public let botUserId: Int64

    /// Information about the affiliate program
    public let parameters: AffiliateProgramInfo


    public init(
        botUserId: Int64,
        parameters: AffiliateProgramInfo
    ) {
        self.botUserId = botUserId
        self.parameters = parameters
    }
}

