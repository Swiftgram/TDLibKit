//
//  GetNetworkStatistics.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.8-f4d20e20
//  https://github.com/tdlib/td/tree/f4d20e20
//

import Foundation


/// Returns network data usage statistics. Can be called before authorization
public struct GetNetworkStatistics: Codable {

    /// If true, returns only data for the current library launch
    public let onlyCurrent: Bool?


    public init(onlyCurrent: Bool?) {
        self.onlyCurrent = onlyCurrent
    }
}

