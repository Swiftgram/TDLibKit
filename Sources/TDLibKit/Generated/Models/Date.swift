//
//  Date.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.41-eb98bbe6
//  https://github.com/tdlib/td/tree/eb98bbe6
//

import Foundation


/// Represents a date according to the Gregorian calendar
public struct Date: Codable, Equatable, Hashable {

    /// Day of the month; 1-31
    public let day: Int

    /// Month; 1-12
    public let month: Int

    /// Year; 1-9999
    public let year: Int


    public init(
        day: Int,
        month: Int,
        year: Int
    ) {
        self.day = day
        self.month = month
        self.year = year
    }
}

