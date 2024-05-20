//
//  BusinessOpeningHoursInterval.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.29-fd3154b2
//  https://github.com/tdlib/td/tree/fd3154b2
//

import Foundation


/// Describes an interval of time when the business is open
public struct BusinessOpeningHoursInterval: Codable, Equatable, Hashable {

    /// The minute's sequence number in a week, starting on Monday, marking the end of the time interval during which the business is open; 1-8*24*60
    public let endMinute: Int

    /// The minute's sequence number in a week, starting on Monday, marking the start of the time interval during which the business is open; 0-7*24*60
    public let startMinute: Int


    public init(
        endMinute: Int,
        startMinute: Int
    ) {
        self.endMinute = endMinute
        self.startMinute = startMinute
    }
}

