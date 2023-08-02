//
//  DateRange.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.15-ff687167
//  https://github.com/tdlib/td/tree/ff687167
//

import Foundation


/// Represents a date range
public struct DateRange: Codable, Equatable, Hashable {

    /// Point in time (Unix timestamp) at which the date range ends
    public let endDate: Int

    /// Point in time (Unix timestamp) at which the date range begins
    public let startDate: Int


    public init(
        endDate: Int,
        startDate: Int
    ) {
        self.endDate = endDate
        self.startDate = startDate
    }
}

