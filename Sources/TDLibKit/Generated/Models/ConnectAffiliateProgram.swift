//
//  ConnectAffiliateProgram.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.42-2be9e799
//  https://github.com/tdlib/td/tree/2be9e799
//

import Foundation


/// Connects an affiliate program to the given affiliate. Returns information about the connected affiliate program
public struct ConnectAffiliateProgram: Codable, Equatable, Hashable {

    /// The affiliate to which the affiliate program will be connected
    public let affiliate: AffiliateType?

    /// Identifier of the bot, which affiliate program is connected
    public let botUserId: Int64?


    public init(
        affiliate: AffiliateType?,
        botUserId: Int64?
    ) {
        self.affiliate = affiliate
        self.botUserId = botUserId
    }
}
