//
//  PremiumLimit.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-5d1fe744
//  https://github.com/tdlib/td/tree/5d1fe744
//

import Foundation


/// Contains information about a limit, increased for Premium users
public struct PremiumLimit: Codable, Equatable, Hashable {

    /// Default value of the limit
    public let defaultValue: Int

    /// Value of the limit for Premium users
    public let premiumValue: Int

    /// The type of the limit
    public let type: PremiumLimitType


    public init(
        defaultValue: Int,
        premiumValue: Int,
        type: PremiumLimitType
    ) {
        self.defaultValue = defaultValue
        self.premiumValue = premiumValue
        self.type = type
    }
}

