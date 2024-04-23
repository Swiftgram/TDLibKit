//
//  BusinessOpeningHoursInterval.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.28-2424d681
//  https://github.com/tdlib/td/tree/2424d681
//

import Foundation


/// Describes an interval of time when the business is open
public struct BusinessOpeningHoursInterval: Codable, Equatable, Hashable {

    /// The first minute after the end of the interval since start of the week; 1-8*24*60
    public let endMinute: Int

    /// The first minute of the interval since start of the week; 0-7*24*60
    public let startMinute: Int


    public init(
        endMinute: Int,
        startMinute: Int
    ) {
        self.endMinute = endMinute
        self.startMinute = startMinute
    }
}

