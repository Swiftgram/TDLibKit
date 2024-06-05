//
//  GetPremiumFeatures.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.30-b102c3ad
//  https://github.com/tdlib/td/tree/b102c3ad
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

