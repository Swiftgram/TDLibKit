//
//  GetGramRevenueStatistics.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.67-d1085f9c
//  https://github.com/tdlib/td/tree/d1085f9c
//

import Foundation


/// Returns detailed TON Gram revenue statistics of the current user
public struct GetGramRevenueStatistics: Codable, Equatable, Hashable {

    /// Pass true if a dark theme is used by the application
    public let isDark: Bool?


    public init(isDark: Bool?) {
        self.isDark = isDark
    }
}

