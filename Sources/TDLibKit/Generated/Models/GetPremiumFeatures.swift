//
//  GetPremiumFeatures.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-9c6f4577
//  https://github.com/tdlib/td/tree/9c6f4577
//

import Foundation


/// Returns information about features, available to Premium users
public struct GetPremiumFeatures: Codable, Equatable {

    /// Source of the request; pass null if the method is called from some non-standard source
    public let source: PremiumSource?


    public init(source: PremiumSource?) {
        self.source = source
    }
}

