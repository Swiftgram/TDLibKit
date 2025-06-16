//
//  GetPremiumLimit.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.50-fb04b8d4
//  https://github.com/tdlib/td/tree/fb04b8d4
//

import Foundation


/// Returns information about a limit, increased for Premium users. Returns a 404 error if the limit is unknown
public struct GetPremiumLimit: Codable, Equatable, Hashable {

    /// Type of the limit
    public let limitType: PremiumLimitType?


    public init(limitType: PremiumLimitType?) {
        self.limitType = limitType
    }
}

