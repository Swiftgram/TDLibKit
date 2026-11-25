//
//  GetOnRampProviders.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.71-f10611ee
//  https://github.com/tdlib/td/tree/f10611ee
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

