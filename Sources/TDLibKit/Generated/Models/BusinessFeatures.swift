//
//  BusinessFeatures.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.47-a03a9047
//  https://github.com/tdlib/td/tree/a03a9047
//

import Foundation


/// Contains information about features, available to Business user accounts
public struct BusinessFeatures: Codable, Equatable, Hashable {

    /// The list of available business features
    public let features: [BusinessFeature]


    public init(features: [BusinessFeature]) {
        self.features = features
    }
}

