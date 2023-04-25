//
//  GetPremiumLimit.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.14-328b8649
//  https://github.com/tdlib/td/tree/328b8649
//

import Foundation


/// Returns information about a limit, increased for Premium users. Returns a 404 error if the limit is unknown
public struct GetPremiumLimit: Codable, Equatable {

    /// Type of the limit
    public let limitType: PremiumLimitType?


    public init(limitType: PremiumLimitType?) {
        self.limitType = limitType
    }
}

