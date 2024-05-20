//
//  PremiumFeatures.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Contains information about features, available to Premium users
public struct PremiumFeatures: Codable, Equatable, Hashable {

    /// The list of available features
    public let features: [PremiumFeature]

    /// The list of limits, increased for Premium users
    public let limits: [PremiumLimit]

    /// An internal link to be opened to pay for Telegram Premium if store payment isn't possible; may be null if direct payment isn't available
    public let paymentLink: InternalLinkType?


    public init(
        features: [PremiumFeature],
        limits: [PremiumLimit],
        paymentLink: InternalLinkType?
    ) {
        self.features = features
        self.limits = limits
        self.paymentLink = paymentLink
    }
}

