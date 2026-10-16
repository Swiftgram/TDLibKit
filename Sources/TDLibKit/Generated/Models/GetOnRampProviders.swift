//
//  GetOnRampProviders.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.68-f381f4b3
//  https://github.com/tdlib/td/tree/f381f4b3
//

import Foundation


/// Returns available on-ramp providers
public struct GetOnRampProviders: Codable, Equatable, Hashable {

    /// Pass a cryptocurrency to receive only providers that support it; pass an empty string to receive all providers
    public let cryptocurrency: String?


    public init(cryptocurrency: String?) {
        self.cryptocurrency = cryptocurrency
    }
}

