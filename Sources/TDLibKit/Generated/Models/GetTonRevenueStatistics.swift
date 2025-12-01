//
//  GetTonRevenueStatistics.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.57-f0d04d35
//  https://github.com/tdlib/td/tree/f0d04d35
//

import Foundation


/// Returns detailed Toncoin revenue statistics of the current user
public struct GetTonRevenueStatistics: Codable, Equatable, Hashable {

    /// Pass true if a dark theme is used by the application
    public let isDark: Bool?


    public init(isDark: Bool?) {
        self.isDark = isDark
    }
}

