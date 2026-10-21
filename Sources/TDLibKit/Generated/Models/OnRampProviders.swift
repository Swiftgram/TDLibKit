//
//  OnRampProviders.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-74e914ee
//  https://github.com/tdlib/td/tree/74e914ee
//

import Foundation


/// Represents a list of on-ramp providers
public struct OnRampProviders: Codable, Equatable, Hashable {

    /// A list of providers
    public let providers: [OnRampProvider]


    public init(providers: [OnRampProvider]) {
        self.providers = providers
    }
}

