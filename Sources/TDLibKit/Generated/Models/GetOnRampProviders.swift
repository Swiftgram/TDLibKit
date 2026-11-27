//
//  GetOnRampProviders.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-9b0bfd15
//  https://github.com/tdlib/td/tree/9b0bfd15
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

