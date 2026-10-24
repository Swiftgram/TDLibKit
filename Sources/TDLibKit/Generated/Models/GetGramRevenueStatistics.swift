//
//  GetGramRevenueStatistics.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.69-0e88653d
//  https://github.com/tdlib/td/tree/0e88653d
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

