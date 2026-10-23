//
//  GetConnectedAffiliateProgram.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-18c8f7a0
//  https://github.com/tdlib/td/tree/18c8f7a0
//

import Foundation


/// Returns an affiliate program that was connected to the given affiliate by identifier of the bot that created the program
public struct GetConnectedAffiliateProgram: Codable, Equatable, Hashable {

    /// The affiliate to which the affiliate program is connected
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

