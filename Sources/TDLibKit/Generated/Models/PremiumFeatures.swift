//
//  PremiumFeatures.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.4-3f763f6f
//  https://github.com/tdlib/td/tree/3f763f6f
//

import Foundation


/// Contains information about features, available to Premium users
public struct PremiumFeatures: Codable, Equatable {

    /// The list of available features
    public let features: [PremiumFeature]

    /// The list of limits, increased for Premium users
    public let limits: [PremiumLimit]

    /// An internal link to be opened to pay for Telegram Premium if store payment isn't possible; may be null if direct payment isn't available. If the link has type internalLinkTypeBotStart, then sendBotStartMessage must be called automatically
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

