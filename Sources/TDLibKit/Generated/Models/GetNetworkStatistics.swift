//
//  GetNetworkStatistics.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.51-6d74326c
//  https://github.com/tdlib/td/tree/6d74326c
//

import Foundation


/// Returns network data usage statistics. Can be called before authorization
public struct GetNetworkStatistics: Codable, Equatable, Hashable {

    /// Pass true to get statistics only for the current library launch
    public let onlyCurrent: Bool?


    public init(onlyCurrent: Bool?) {
        self.onlyCurrent = onlyCurrent
    }
}

