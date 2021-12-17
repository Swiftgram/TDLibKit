//
//  DateRange.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.7.10-eec1953c
//  https://github.com/tdlib/td/tree/eec1953c
//

import Foundation


/// Represents a date range
public struct DateRange: Codable, Equatable {

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

