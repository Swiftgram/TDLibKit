//
//  DisconnectAffiliateProgram.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-da4e46f2
//  https://github.com/tdlib/td/tree/da4e46f2
//

import Foundation


/// Disconnects an affiliate program from the given affiliate and immediately deactivates its referral link. Returns updated information about the disconnected affiliate program
public struct DisconnectAffiliateProgram: Codable, Equatable, Hashable {

    /// The affiliate to which the affiliate program is connected
    public let affiliate: AffiliateType?

    /// The referral link of the affiliate program
    public let url: String?


    public init(
        affiliate: AffiliateType?,
        url: String?
    ) {
        self.affiliate = affiliate
        self.url = url
    }
}

