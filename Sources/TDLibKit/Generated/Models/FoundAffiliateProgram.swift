//
//  FoundAffiliateProgram.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-fb04b8d4
//  https://github.com/tdlib/td/tree/fb04b8d4
//

import Foundation


/// Describes a found affiliate program
public struct FoundAffiliateProgram: Codable, Equatable, Hashable {

    /// User identifier of the bot created the program
    public let botUserId: Int64

    /// Information about the affiliate program
    public let info: AffiliateProgramInfo


    public init(
        botUserId: Int64,
        info: AffiliateProgramInfo
    ) {
        self.botUserId = botUserId
        self.info = info
    }
}

