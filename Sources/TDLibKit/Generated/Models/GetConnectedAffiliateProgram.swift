//
//  GetConnectedAffiliateProgram.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.47-04adfc87
//  https://github.com/tdlib/td/tree/04adfc87
//

import Foundation


/// Returns an affiliate program that were connected to the given affiliate by identifier of the bot that created the program
public struct GetConnectedAffiliateProgram: Codable, Equatable, Hashable {

    /// The affiliate to which the affiliate program will be connected
    public let affiliate: AffiliateType?

    /// Identifier of the bot that created the program
    public let botUserId: Int64?


    public init(
        affiliate: AffiliateType?,
        botUserId: Int64?
    ) {
        self.affiliate = affiliate
        self.botUserId = botUserId
    }
}

