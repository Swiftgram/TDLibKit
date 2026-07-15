//
//  TimeZones.swift
//  tl2swift
//
//  Generated automatically. Any changes will be lost!
//  Based on TDLib 1.8.66-07d3a097
//  https://github.com/tdlib/td/tree/07d3a097
//

import Foundation


/// Contains a list of time zones
public struct TimeZones: Codable, Equatable, Hashable {

    /// A list of time zones
    public let timeZones: [TimeZone]


    public init(timeZones: [TimeZone]) {
        self.timeZones = timeZones
    }
}

