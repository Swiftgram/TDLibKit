//
//  GetPremiumFeatures.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.46-b498497b
//  https://github.com/tdlib/td/tree/b498497b
//

import Foundation


/// Returns information about features, available to Premium users
public struct GetPremiumFeatures: Codable, Equatable, Hashable {

    /// Source of the request; pass null if the method is called from some non-standard source
    public let source: PremiumSource?


    public init(source: PremiumSource?) {
        self.source = source
    }
}

